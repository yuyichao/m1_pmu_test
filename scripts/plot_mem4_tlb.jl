#!/usr/bin/julia

using DelimitedFiles
using PyPlot

function load(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function load_all(dir)
    regex = r"/test_mem_(load|store)4_(page|dense)_randomize_([0-9]*)_summary_fit.csv$"
    res = (load=(page=Dict{Int,Matrix{Float64}}(), dense=Dict{Int,Matrix{Float64}}()),
           store=(page=Dict{Int,Matrix{Float64}}(), dense=Dict{Int,Matrix{Float64}}()))
    for f in readdir(dir, join=true)
        m = match(regex, f)
        m === nothing && continue
        sz = parse(Int, m[3])
        res1 = m[1] == "load" ? res.load : res.store
        res2 = m[2] == "dense" ? res1.dense : res1.page
        res2[sz] = load(f)
    end
    return res
end

function compute_diff(counts)
    diff = Dict{Int,Matrix{Float64}}()
    for (sz, page_data) in counts.page
        dense_data = counts.dense[sz]
        diff[sz] = [page_data[:, 1] page_data[:, 3] .- dense_data[:, 3] page_data[:, 7] .- dense_data[:, 7]]
    end
    return diff
end

function filter_diff!(evt_diff)
    for evt in 0:255
        diff = evt_diff[evt]
        if all(x->abs(x) <= 0.06, diff)
            delete!(evt_diff, evt)
        elseif any(x->abs(x) > 4, diff)
            delete!(evt_diff, evt)
        elseif any(x->x < -0.04, diff)
            delete!(evt_diff, evt)
        end
    end
end

function resort_data(diff)
    sizes = sort!(collect(keys(diff)))
    ice_evt_diff = Dict(i=>Float64[] for i in 0:255)
    fire_evt_diff = Dict(i=>Float64[] for i in 0:255)
    for sz in sizes
        d = diff[sz]
        for i in 1:256
            evt = d[i, 1]
            push!(ice_evt_diff[evt], d[i, 2])
            push!(fire_evt_diff[evt], d[i, 3])
        end
    end
    filter_diff!(ice_evt_diff)
    filter_diff!(fire_evt_diff)
    return sizes, ice_evt_diff, fire_evt_diff
end

const ls_cycle = ["-", "--", "-.", ":"]

function get_fmt(i)
    ls = ls_cycle[((i - 1) ÷ 10) % 4 + 1]
    return "C$((i - 1) % 10)$ls"
end

function plot_diff(sizes, ice_evt_diff, fire_evt_diff)
    figure(figsize=[12.6, 5.6])
    subplot(1, 2, 1)
    ice_evts = sort!(collect(keys(ice_evt_diff)))
    for i in 1:length(ice_evts)
        evt = ice_evts[i]
        diff = ice_evt_diff[evt]
        plot(sizes, diff, get_fmt(i), label="$(evt)")
    end
    axvline(128, color="r")
    axvline(1024, color="g")
    gca()[:set_xscale]("log")
    # xlim([1024, 2^26])
    legend(ncol=4)
    subplot(1, 2, 2)
    fire_evts = sort!(collect(keys(fire_evt_diff)))
    for i in 1:length(fire_evts)
        evt = fire_evts[i]
        diff = fire_evt_diff[evt]
        plot(sizes, diff, get_fmt(i), label="$(evt)")
    end
    axvline(160, color="r")
    axvline(3072, color="g")
    gca()[:set_xscale]("log")
    # xlim([1024, 2^26])
    legend(ncol=4)
end

const raw_data = load_all(joinpath(@__DIR__, "../data"))
const diff_data = (load=compute_diff(raw_data.load), store=compute_diff(raw_data.store))
const resorted_data = (load=resort_data(diff_data.load), store=resort_data(diff_data.store))

plot_diff(resorted_data.load...)
plot_diff(resorted_data.store...)

show()
