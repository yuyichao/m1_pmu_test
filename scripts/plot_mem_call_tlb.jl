#!/usr/bin/julia

using DelimitedFiles
using PyPlot
using NaCsPlot
using NaCsData.Fitting: fit_data

function load(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function load_all(dir)
    regex = r"/test_mem_call7_(page|dense)_randomize_([0-9]*)_summary_fit.csv$"
    res = (page=Dict{Int,Matrix{Float64}}(), dense=Dict{Int,Matrix{Float64}}())
    for f in readdir(dir, join=true)
        m = match(regex, f)
        m === nothing && continue
        sz = parse(Int, m[2])
        res2 = m[1] == "dense" ? res.dense : res.page
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

function check_diff(diff)
    if all(x->abs(x) <= 0.06, diff)
        return false
    elseif any(x->x < -0.04, diff)
        return false
    elseif any(x->x > 40, diff)
        return false
    end
    return true
end

function check_diff2(diff)
    if all(x->abs(x) <= 0.06, diff)
        return false
    elseif any(x->x < -0.04, diff)
        return false
    elseif any(x->x > 2, diff)
        return false
    end
    return true
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
    return sizes, ice_evt_diff, fire_evt_diff
end

const ls_cycle = ["-", "--", "-.", ":"]

function get_fmt(i)
    ls = ls_cycle[((i - 1) ÷ 10) % 4 + 1]
    return "C$((i - 1) % 10)$ls"
end

function plot_all_diff(name, sizes, ice_evt_diff, fire_evt_diff)
    figure(figsize=[12.6, 5.6])
    subplot(1, 2, 1)
    ice_idx = 0
    for evt in 0:255
        diff = ice_evt_diff[evt]
        if !check_diff(diff)
            continue
        end
        ice_idx += 1
        plot(sizes, diff, get_fmt(ice_idx), label="$(evt)")
    end
    axvline(128, color="r")
    axvline(1024, color="g")
    gca()[:set_xscale]("log")
    xlim([64, 32 * 256])
    # ylim([0, ylim()[2]])
    xlabel("Pages")
    ylabel("Count Difference")
    legend(ncol=6, fontsize=8)
    title("Ice Storm ($name)")
    subplot(1, 2, 2)
    fire_idx = 0
    for evt in 0:255
        diff = fire_evt_diff[evt]
        if !check_diff(diff)
            continue
        end
        fire_idx += 1
        plot(sizes, diff, get_fmt(fire_idx), label="$(evt)")
    end
    axvline(160, color="r")
    axvline(3072, color="g")
    gca()[:set_xscale]("log")
    xlim([64, 32 * 256])
    # ylim([0, ylim()[2]])
    xlabel("Page Count")
    ylabel("Count Difference")
    legend(ncol=6, fontsize=8)
    title("Fire Storm ($name)")
    tight_layout()
end

function plot_all_diff2(name, sizes, ice_evt_diff, fire_evt_diff)
    figure(figsize=[12.6, 5.6])
    subplot(1, 2, 1)
    ice_idx = 0
    for evt in 0:255
        diff = ice_evt_diff[evt]
        if !check_diff2(diff)
            continue
        end
        ice_idx += 1
        plot(sizes, diff, get_fmt(ice_idx), label="$(evt)")
    end
    axvline(128, color="r")
    axvline(1024, color="g")
    gca()[:set_xscale]("log")
    xlim([64, 32 * 256])
    ylim([0, ylim()[2]])
    xlabel("Pages")
    ylabel("Count Difference")
    legend(ncol=6, fontsize=8)
    title("Ice Storm ($name)")
    subplot(1, 2, 2)
    fire_idx = 0
    for evt in 0:255
        diff = fire_evt_diff[evt]
        if !check_diff2(diff)
            continue
        end
        fire_idx += 1
        plot(sizes, diff, get_fmt(fire_idx), label="$(evt)")
    end
    axvline(160, color="r")
    axvline(3072, color="g")
    gca()[:set_xscale]("log")
    xlim([64, 32 * 256])
    ylim([0, ylim()[2]])
    xlabel("Page Count")
    ylabel("Count Difference")
    legend(ncol=6, fontsize=8)
    title("Fire Storm ($name)")
    tight_layout()
end

const raw_data = load_all(joinpath(@__DIR__, "../data"))
const diff_data = compute_diff(raw_data)
const resorted_data = resort_data(diff_data)

const prefix = joinpath(@__DIR__, "../imgs/mem_call_tlb")

plot_all_diff("Call", resorted_data...)
NaCsPlot.maybe_save("$(prefix)_all")

plot_all_diff2("Call", resorted_data...)
NaCsPlot.maybe_save("$(prefix)_small")

NaCsPlot.maybe_show()
