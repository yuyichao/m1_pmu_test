#!/usr/bin/julia

include("libtests_int.jl")
include("libtests.jl")

using Printf

set_cores(0, 4)

function run_loops!(f, loops, res)
    nloops = length(loops)
    for i in 1:nloops
        f(loops[i], @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
end

function run_and_save!(f, loops, res, file)
    open(file, "w") do fh
        run_loops!(f, loops, res)
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

function run_all(idx_begin, idx_end, loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for (key, val) in testgrp_int
        mkpath(joinpath(@__DIR__, "..", "data", "test_$(key)"), mode=0o755)
    end
    for i in idx_begin:idx_end
        println("Index: $i")
        @time for (key, val) in testgrp_int
            if i % 100 == 0
                println("Running: $key")
            end
            run_and_save!(val, loops, res,
                         joinpath(@__DIR__, "..", "data", "test_$(key)", "$(i).csv"))
        end
    end
end

run_all(parse(Int, ARGS[1]), parse(Int, ARGS[2]), [1, 100, 10000, 1000000])
