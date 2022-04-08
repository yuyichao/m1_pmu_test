#!/usr/bin/julia

# Run in the build directory
include("libtests.jl")

using Printf

set_cores(0, 4)

function run_load_loops(loops, randomize, sz)
    nloops = length(loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for i in 1:nloops
        mem_load_test2!(sz, loops[i], randomize,
                        @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
    return res
end

function run_store_loops(loops, randomize, sz)
    nloops = length(loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for i in 1:nloops
        mem_store_test2!(sz, loops[i], randomize,
                         @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
    return res
end

function run_load_and_save(file, randomize, sz, loops)
    open(file, "w") do fh
        res = run_load_loops(loops, randomize, sz)
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

function run_store_and_save(file, randomize, sz, loops)
    open(file, "w") do fh
        res = run_store_loops(loops, randomize, sz)
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

function run_load_size(sz, i, loops)
    dir_reg = joinpath(@__DIR__, "..", "data", "test_mem_load3_regular_$sz")
    dir_rand = joinpath(@__DIR__, "..", "data", "test_mem_load3_randomize_$sz")
    mkpath(dir_reg, mode=0o755)
    mkpath(dir_rand, mode=0o755)
    run_load_and_save(joinpath(dir_reg, "$(i).csv"), false, sz, loops)
    run_load_and_save(joinpath(dir_rand, "$(i).csv"), true, sz, loops)
end

function run_store_size(sz, i, loops)
    dir_reg = joinpath(@__DIR__, "..", "data", "test_mem_store3_regular_$sz")
    dir_rand = joinpath(@__DIR__, "..", "data", "test_mem_store3_randomize_$sz")
    mkpath(dir_reg, mode=0o755)
    mkpath(dir_rand, mode=0o755)
    run_store_and_save(joinpath(dir_reg, "$(i).csv"), false, sz, loops)
    run_store_and_save(joinpath(dir_rand, "$(i).csv"), true, sz, loops)
end

const loops_small = [1, 400_000, 700_000, 1000_000]
const loops_mid = [1, 1000_000, 2_000_000, 3_000_000]
const loops_big = [1, 2000_000, 3_500_000, 5_000_000]

const old_sizes = Set([2 .^ (5:24); 6 * 512 * 1024; 7 * 512 * 1024])

function run_all_sizes(idx, sizes)
    for sz in sizes
        if sz in old_sizes
            continue
        end
        loops = if sz < 400_000 * 16
            loops_small
        elseif  sz < 1000_000 * 16
            loops_mid
        else
            loops_big
        end
        if idx % 50 == 0
            println(sz)
            @time run_load_size(sz, idx, loops)
            @time run_store_size(sz, idx, loops)
        else
            run_load_size(sz, idx, loops)
            run_store_size(sz, idx, loops)
        end
    end
end

function run_all(idx_begin, idx_end)
    sizes = [(4:32) .* (512 * 1024)]
    for i in idx_begin:idx_end
        println("Index: $i")
        @time run_all_sizes(i, sizes)
    end
end

run_all(parse(Int, ARGS[1]), parse(Int, ARGS[2]))
