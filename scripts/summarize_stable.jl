#!/usr/bin/julia

using DelimitedFiles

function load(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function summarize_stable(dir)
    stable = Dict{Int,Int}()
    count = 0
    suffix1 = "-stable.csv"
    for f in readdir(dir, join=true)
        endswith(f, suffix1) || continue
        data = load(f)
        count += 1
        for i in 1:size(data, 1)
            key = Int(data[i, 1])
            stable[key] = get(stable, key, 0) + 1
        end
    end
    nontrivial = Dict{Int,Bool}()
    for (key, value) in stable
        if value != count
            println("event $key not stable in all tests: $value")
            continue
        end
        nontrivial[key] = false
    end
    suffix2 = "-nontrivial_stable.csv"
    for f in readdir(dir, join=true)
        endswith(f, suffix2) || continue
        data = load(f)
        count += 1
        for i in 1:size(data, 1)
            key = Int(data[i, 1])
            key in keys(nontrivial) || continue
            nontrivial[key] = true
        end
    end
    stable_evts = sort!(collect(keys(nontrivial)))

    println("nontrivial:")
    println("|event id|")
    println("|--------|")
    for evt in stable_evts
        nontrivial[evt] || continue
        println("|$evt|")
    end

    println("trivial:")
    println("|event id|")
    println("|--------|")
    for evt in stable_evts
        nontrivial[evt] && continue
        println("|$evt|")
    end
end
