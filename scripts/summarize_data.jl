#!/usr/bin/julia

using Statistics
using LsqFit

model_lin(x, p) = p[1] .+ p[2] .* x

struct CountFit
    # Average: mean(count) = ma + n * mb
    # Variance: var(count) = va + n * vb
    ma::Float64
    mb::Float64
    va::Float64
    vb::Float64
end

function fit_counts(ns, counts)
    means = Float64[]
    vars = Float64[]
    for cs in counts
        push!(means, mean(cs))
        push!(vars, var(cs))
    end
    fit_mean = curve_fit(model_lin, ns, means, [0.0, 0.0])
    fit_var = curve_fit(model_lin, ns, vars, [0.0, 0.0])
    return CountFit(fit_mean.param[1], fit_mean.param[2],
                    fit_var.param[1], fit_var.param[2])
end

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

function process_dir(dir)
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
    icestorm_res = CountFit[]
    firestorm_res = CountFit[]
    for i in 1:nevts
        push!(icestorm_res, fit_counts(ns, icestorm_evts[i]))
        push!(firestorm_res, fit_counts(ns, firestorm_evts[i]))
    end
    return icestorm_res, firestorm_res
end

function resave_summary(dir)
    icestorm_res, firestorm_res = process_dir(dir)
    open("$(dir)_summary_fit.csv", "w") do fd
        println(fd, "evt,ice_ma,ice_mb,ice_va,ice_vb,fire_ma,fire_mb,fire_va,fire_vb")
        nevts = length(icestorm_res)
        for i in 1:nevts
            ires = icestorm_res[i]
            fres = firestorm_res[i]
            println(fd, "$(i - 1),$(round(ires.ma, digits=5)),$(round(ires.mb, digits=5)),$(ires.va),$(ires.vb),$(round(fres.ma, digits=5)),$(round(fres.mb, digits=5)),$(fres.va),$(fres.vb)")
        end
    end
end

function resave_summary_all(dir)
    for subdir in readdir(dir, join=true)
        isdir(subdir) || continue
        resave_summary(subdir)
    end
end
