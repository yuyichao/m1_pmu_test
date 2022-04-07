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

function run_and_save(file, randomize, sz, loops)
    open(file, "w") do fh
        res = run_loops(loops, randomize, sz)
        println(fh, "evt," * join(["$(l),$(l)" for l in loops], ","))
        for i in 1:size(res, 1)
            @printf(fh, "%02x", i - 1)
            for j in 1:size(res, 2)
                print(fh, ",$(res[i, j])")
            end
            println(fh)
        end
    end
end

function run_size(sz, i, loops)
    dir_reg = joinpath(@__DIR__, "..", "data", "test_mem_load_regular_$sz")
    dir_rand = joinpath(@__DIR__, "..", "data", "test_mem_load_randomize_$sz")
    mkpath(dir_reg, mode=0o755)
    mkpath(dir_rand, mode=0o755)
    run_and_save(joinpath(dir_reg, "$(i).csv"), false, sz, loops)
    run_and_save(joinpath(dir_rand, "$(i).csv"), true, sz, loops)
end

const prev_size = Set([4 * 1024, 8 * 1024, # < L1d
                       128 * 1024, 512 * 1024, # < L2
                       7 * 512 * 1024, # system cache?
                       16 * 1024 * 1024 # main memory
                       ]);

function run_all_sizes(idx, loops)
    for i in 6:25
        sz = 2^i
        if sz in prev_size
            continue
        end
        if idx % 50 == 0
            println(sz)
        end
        run_size(sz, idx, loops)
    end
end

function run_all(idx_begin, idx_end, loops)
    for i in idx_begin:idx_end
        println("Index: $i")
        @time run_all_sizes(i, loops)
    end
end

run_all(parse(Int, ARGS[1]), parse(Int, ARGS[2]), [1, 1000, 1000_000, 100_000_000])
