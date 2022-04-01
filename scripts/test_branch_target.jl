#!/usr/bin/julia

# Run in the build directory
include("libtests.jl")

using Printf

set_cores(0, 4)

function run_loops(loops, randomize)
    nloops = length(loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for i in 1:nloops
        branch_target_test!(loops[i], randomize,
                            @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
    return res
end

function run_and_save(file, randomize)
    open(file, "w") do fh
        res = run_loops([1, 100, 10000, 1000000], randomize)
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

function run_all()
    dir_reg = joinpath(@__DIR__, "..", "data", "test_br_tgt_regular")
    dir_rand = joinpath(@__DIR__, "..", "data", "test_br_tgt_randomize")
    mkpath(dir_reg, mode=0o755)
    mkpath(dir_rand, mode=0o755)
    for i in 1:1000
        println("Attempt: $i")
        run_and_save(joinpath(dir_reg, "$(i - 1).csv"), false)
        run_and_save(joinpath(dir_rand, "$(i - 1).csv"), true)
    end
end

run_all()
