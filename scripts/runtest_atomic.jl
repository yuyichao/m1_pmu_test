#!/usr/bin/julia

include("libtests_atomic.jl")

using Printf

function run_loops(f, loops)
    nloops = length(loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for i in 1:nloops
        f(loops[i], @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
    return res
end

function run_and_save(f, file)
    open(file, "w") do fh
        res = run_loops(f, [1, 100, 10000, 1000000])
        println(fh, "evt,1,1,100,100,10000,10000,1000000,1000000")
        for i in 1:size(res, 1)
            @printf(fh, "%02x", i - 1)
            for j in 1:size(res, 2)
                print(fh, ",$(res[i, j])")
            end
            println(fh)
        end
    end
end

function run_all(idx_begin, idx_end)
    for (key, val) in testgrp_atomic
        mkpath(joinpath(@__DIR__, "..", "data", "test_$(key)"), mode=0o755)
    end
    for i in idx_begin:idx_end
        println("Index: $i")
        for (key, val) in testgrp_atomic
            if i % 100 == 0
                println("Running: $key")
            end
            run_and_save(val, joinpath(@__DIR__, "..", "data", "test_$(key)", "$(i).csv"))
        end
    end
end

run_all(parse(Int, ARGS[1]), parse(Int, ARGS[2]))
