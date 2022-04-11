#!/usr/bin/julia

# Run in the build directory
include("libtests.jl")

using Printf

set_cores(0, 4)

function run_loops(loops)
    nloops = length(loops)
    res = zeros(Int64, 256, length(loops) * 2)
    for i in 1:nloops
        syscall_test!(loops[i], @view(res[:, i * 2 - 1]), @view(res[:, i * 2]))
    end
    return res
end

function run_and_save(file, loops)
    open(file, "w") do fh
        res = run_loops(loops)
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

const loops = [1, 100, 1000, 10_000]

function run_all(idx_begin, idx_end)
    dir = joinpath(@__DIR__, "..", "data", "test_syscall")
    mkpath(dir, mode=0o755)
    for i in idx_begin:idx_end
        println("Index: $i")
        @time run_and_save(joinpath(dir, "$(i).csv"), loops)
    end
end

run_all(parse(Int, ARGS[1]), parse(Int, ARGS[2]))
