#!/usr/bin/julia

using Statistics

function load_res(f)
    return open(f) do fd
        first = split(readline(fd), ',')
        ns = Int[]
        for i in 2:2:length(first)
            n = parse(Int, first[i])
            @assert parse(Int, first[i + 1]) == n
            push!(ns, n)
        end
        icestorm_evts = Vector{Float64}[]
        firestorm_evts = Vector{Float64}[]
        evt = 0
        for line in eachline(fd)
            data = split(line, ',')
            @assert parse(Int, data[1], base=16) == evt
            evt += 1
            icnts = Float64[]
            fcnts = Float64[]
            push!(icestorm_evts, icnts)
            push!(firestorm_evts, fcnts)
            for i in 2:2:length(data)
                push!(icnts, parse(Int, data[i]))
                push!(fcnts, parse(Int, data[i + 1]))
            end
        end
        return ns, icestorm_evts, firestorm_evts
    end
end

function process_dir_single(dir, index=1)
    local ns, icestorm_evts, firestorm_evts
    local nevts
    for f in readdir(dir, join=true)
        _ns, _icestorm_evts, _firestorm_evts = load_res(f)
        if !@isdefined(ns)
            ns = _ns
            nevts = length(_icestorm_evts)
            icestorm_evts = [[Float64[] for _ in 1:length(ns)] for _ in 1:nevts]
            firestorm_evts = [[Float64[] for _ in 1:length(ns)] for _ in 1:nevts]
        else
            @assert ns == _ns
            @assert nevts == length(_icestorm_evts)
        end
        for j in 1:nevts
            icestorm_evt = icestorm_evts[j]
            firestorm_evt = firestorm_evts[j]
            _icestorm_evt = _icestorm_evts[j]
            _firestorm_evt = _firestorm_evts[j]
            for i in 1:length(ns)
                push!(icestorm_evt[i], _icestorm_evt[i])
                push!(firestorm_evt[i], _firestorm_evt[i])
            end
        end
    end
    icestorm_res = Tuple{Float64,Float64}[]
    firestorm_res = Tuple{Float64,Float64}[]
    for i in 1:nevts
        icnts = icestorm_evts[i][index]
        fcnts = firestorm_evts[i][index]
        push!(icestorm_res, (mean(icnts), var(icnts)))
        push!(firestorm_res, (mean(fcnts), var(fcnts)))
    end
    return ns[index], icestorm_res, firestorm_res
end

function resave_summary_single(dir, index=1)
    n, icestorm_res, firestorm_res = process_dir_single(dir, index)
    open("$(dir)-summary_single_$n.csv", "w") do fd
        println(fd, "evt,ice_m,ice_v,fire_m,fire_v")
        nevts = length(icestorm_res)
        for i in 1:nevts
            ires = icestorm_res[i]
            fres = firestorm_res[i]
            println(fd, "$(i - 1),$(round(ires[1], digits=5)),$(ires[2]),$(round(fres[1], digits=5)),$(fres[2])")
        end
    end
end
