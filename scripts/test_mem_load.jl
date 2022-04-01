#!/usr/bin/julia

# Run in the build directory
include("libtests.jl")

using Printf

set_cores(0, 4)

function run_loops(loops, randomize, sz)
    nloops = length(loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for i in 1:nloops
        mem_load_test!(sz, loops[i], randomize, @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
    return res
end

function run_and_save(file, randomize, sz)
    open(file, "w") do fh
        res = run_loops([1, 100, 10000, 1000000], randomize, sz)
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

function run_all_size(sz)
    println("Testing size: $sz")
    dir_reg = joinpath(@__DIR__, "..", "data", "test_mem_load_regular_$sz")
    dir_rand = joinpath(@__DIR__, "..", "data", "test_mem_load_randomize_$sz")
    mkpath(dir_reg, mode=0o755)
    mkpath(dir_rand, mode=0o755)
    for i in 1:1000
        println("Attempt: $i")
        run_and_save(joinpath(dir_reg, "$(i - 1).csv"), false)
        run_and_save(joinpath(dir_rand, "$(i - 1).csv"), true)
    end
end

function run_all()
    for sz in [4 * 1024, 8 * 1024, # < L1d
               128 * 1024, 512 * 1024, # < L2
               7 * 512 * 1024, # system cache?
               16 * 1024 * 1024 # main memory
               ]
        run_all_size(sz)
    end
end

run_all()
