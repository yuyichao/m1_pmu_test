#!/usr/bin/julia

# Run in the build directory
include("libtests.jl")

using Printf

set_cores(0, 4)

function run_call_loops(loops, randomize, page, sz)
    nloops = length(loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for i in 1:nloops
        mem_call_test!(sz, page ? 4 * 1024 : 16, loops[i], randomize,
                       @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
    return res
end

function run_call_and_save(file, randomize, page, sz, loops)
    open(file, "w") do fh
        res = run_call_loops(loops, randomize, page, sz)
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

function run_call_size(page, sz, i, loops)
    dir_reg = joinpath(@__DIR__, "..", "data",
                       "test_mem_call7_$(page ? "page" : "dense")_regular_$sz")
    dir_rand = joinpath(@__DIR__, "..", "data",
                        "test_mem_call7_$(page ? "page" : "dense")_randomize_$sz")
    mkpath(dir_reg, mode=0o755)
    mkpath(dir_rand, mode=0o755)
    run_call_and_save(joinpath(dir_reg, "$(i).csv"), false, page, sz, loops)
    run_call_and_save(joinpath(dir_rand, "$(i).csv"), true, page, sz, loops)
end

const loops = [1, 1000, 10_000, 100_000]

function run_all_sizes(idx, sizes)
    for sz in sizes
        if idx % 100 == 0
            println(sz)
            @time run_call_size(true, sz, idx, loops)
            @time run_call_size(false, sz, idx, loops)
        else
            run_call_size(true, sz, idx, loops)
            run_call_size(false, sz, idx, loops)
        end
    end
end

function run_all(idx_begin, idx_end)
    sizes = 32 .* [2, 3, 4, 5, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256]
    for i in idx_begin:idx_end
        println("Index: $i")
        @time run_all_sizes(i, sizes)
    end
end

run_all(parse(Int, ARGS[1]), parse(Int, ARGS[2]))
