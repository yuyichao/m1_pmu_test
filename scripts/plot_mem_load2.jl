#!/usr/bin/julia

using DelimitedFiles
using PyPlot

function load(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function load_all(dir)
    regex = r"/test_mem_load2_(regular|randomize)_([0-9]*)_summary_fit.csv$"
    res = (rand=Dict{Int,Matrix{Float64}}(), reg=Dict{Int,Matrix{Float64}}())
    for f in readdir(dir, join=true)
        m = match(regex, f)
        m === nothing && continue
        sz = parse(Int, m[2]) * 4
        res2 = m[1] == "regular" ? res.reg : res.rand
        res2[sz] = load(f)
    end
    return res
end

function compute_diff(counts)
    diff = Dict{Int,Matrix{Float64}}()
    for (sz, rand_data) in counts.rand
        reg_data = counts.reg[sz]
        diff[sz] = [rand_data[:, 1] rand_data[:, 3] .- reg_data[:, 3] rand_data[:, 7] .- reg_data[:, 7]]
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
        elseif evt == 5 || evt == 11 || evt == 193
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
    return "C$((i - 1) % 10).$ls"
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
    axvline(64 * 1024, color="r")
    axvline(128 * 16 * 1024, color="g", alpha=0.5)
    axvline(4 * 1024^2, color="g")
    axvline(16 * 1024^2, color="b")
    gca()[:set_xscale]("log")
    xlim([1024, 2^26])
    legend(ncol=4)
    subplot(1, 2, 2)
    fire_evts = sort!(collect(keys(fire_evt_diff)))
    for i in 1:length(fire_evts)
        evt = fire_evts[i]
        diff = fire_evt_diff[evt]
        plot(sizes, diff, get_fmt(i), label="$(evt)")
    end
    axvline(128 * 1024, color="r")
    axvline(160 * 16 * 1024, color="g", alpha=0.5)
    axvline(12 * 1024^2, color="g")
    axvline(16 * 1024^2, color="b")
    gca()[:set_xscale]("log")
    xlim([1024, 2^26])
    legend(ncol=4)
end

const raw_data = load_all(joinpath(@__DIR__, "../data"))
const diff_data = compute_diff(raw_data)
const resorted_data = resort_data(diff_data)

plot_diff(resorted_data...)

show()
