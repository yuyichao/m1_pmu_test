#!/usr/bin/julia

using DelimitedFiles

function load_summary(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

struct GlobalSummary
    global_zero::Set{Int}
    loop_zero::Set{Int}
    cycle_like::Set{Int}
    function GlobalSummary()
        return new(Set{Int}(0:255), Set{Int}(0:255), Set{Int}())
    end
end

function all_zero(data, i)
    return all(iszero, @view data[i, 2:end])
end

function slope_zero(data, i)
    return data[i, 3] <= 0.01 && data[i, 7] <= 0.01
end

function equal_cycle(data, i)
    return abs(data[i, 3] - data[3, 3]) <= 0.3 && abs(data[i, 7] - data[3, 7]) <= 0.3
end

function scan(gs, f)
    data = load_summary(f)
    for i in 1:size(data, 1)
        evt = data[i, 1]
        if !slope_zero(data, i)
            delete!(gs.global_zero, evt)
            delete!(gs.loop_zero, evt)
        elseif !all_zero(data, i)
            delete!(gs.global_zero, evt)
        end
        if equal_cycle(data, i)
            push!(gs.cycle_like, evt)
        end
    end
end

function post_scan(gs)
    delete!(gs.cycle_like, 2) # cycle count itself
    setdiff!(gs.loop_zero, gs.global_zero)
end

function save_evtlist_csv(list, name)
    open(name, "w") do fh
        println(fh, "evt")
        println(fh, join(list, "\n"))
    end
end

function save_global_summary(gs, dir)
    save_evtlist_csv(sort!(collect(gs.global_zero)), joinpath(dir, "global_zero.csv"))
    save_evtlist_csv(sort!(collect(gs.loop_zero)), joinpath(dir, "loop_zero.csv"))
    save_evtlist_csv(sort!(collect(gs.cycle_like)), joinpath(dir, "cycle_like.csv"))
end

function scan_all(dir)
    suffix = "_summary_fit.csv"
    gs = GlobalSummary()
    for f in readdir(dir, join=true)
        endswith(f, suffix) || continue
        scan(gs, f)
    end
    post_scan(gs)
    save_global_summary(gs, dir)
end
