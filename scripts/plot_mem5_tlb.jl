#!/usr/bin/julia

using DelimitedFiles
using PyPlot
using NaCsPlot
using NaCsData.Fitting: fit_data

function load(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function load_all(dir)
    regex = r"/test_mem_(load|store)5_(page|dense)_randomize_([0-9]*)_summary_fit.csv$"
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

function check_diff(diff)
    if all(x->abs(x) <= 0.06, diff)
        return false
    elseif any(x->x < -0.04, diff)
        return false
    end
    return true
end

function filter_diff!(evt_diff)
    for evt in 0:255
        diff = evt_diff[evt]
        if all(x->abs(x) <= 0.06, diff)
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
    ylim([0, ylim()[2]])
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
    ylim([0, ylim()[2]])
    xlabel("Page Count")
    ylabel("Count Difference")
    legend(ncol=6, fontsize=8)
    title("Fire Storm ($name)")
    tight_layout()
end

function plot_diff_evts(name, ice_evts, fire_evts, sizes, ice_evt_diff, fire_evt_diff)
    figure(figsize=[12.6, 5.6])
    subplot(1, 2, 1)
    for i in 1:length(ice_evts)
        evt = ice_evts[i]
        diff = ice_evt_diff[evt]
        plot(sizes, diff, get_fmt(i), label="$(evt)")
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
    for i in 1:length(fire_evts)
        evt = fire_evts[i]
        diff = fire_evt_diff[evt]
        plot(sizes, diff, get_fmt(i), label="$(evt)")
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
const diff_data = (load=compute_diff(raw_data.load), store=compute_diff(raw_data.store))
const resorted_data = (load=resort_data(diff_data.load), store=resort_data(diff_data.store))

const prefix = joinpath(@__DIR__, "../imgs/mem5_tlb")

plot_all_diff("Load", resorted_data.load...)
NaCsPlot.maybe_save("$(prefix)_all_load")
plot_all_diff("Store", resorted_data.store...)
NaCsPlot.maybe_save("$(prefix)_all_store")

plot_diff_evts("Load", [9, 31, 58, 160, 161, 166, 167, 172, 187, 188],
               [9, 31, 58, 160, 161, 166, 167, 172, 187, 188], resorted_data.load...)
NaCsPlot.maybe_save("$(prefix)_load_other")
plot_diff_evts("Store", [9, 31, 58, 160, 161, 166, 167, 172, 187, 188],
               [9, 31, 58, 160, 161, 166, 167, 172, 187, 188], resorted_data.store...)
NaCsPlot.maybe_save("$(prefix)_store_other")

function model_miss(x, p)
    model_single(x) = x < p[1] ? 0.0 : (x - p[1]) / x
    return model_single.(x)
end

sizes, ice_evt_diff, fire_evt_diff = resorted_data.load

const fit_ice_load5 = fit_data(model_miss, sizes, ice_evt_diff[5], [128.0])
const fit_ice_load11 = fit_data(model_miss, sizes, ice_evt_diff[11], [1024.0])
const fit_ice_load193 = fit_data(model_miss, sizes, ice_evt_diff[193], [128.0])
const fit_fire_load5 = fit_data(model_miss, sizes, fire_evt_diff[5], [160.0])
const fit_fire_load11 = fit_data(model_miss, sizes, fire_evt_diff[11], [3072.0])
const fit_fire_load193 = fit_data(model_miss, sizes, fire_evt_diff[193], [160.0])

@show fit_ice_load5.uncs
@show fit_ice_load11.uncs
@show fit_ice_load193.uncs
@show fit_fire_load5.uncs
@show fit_fire_load11.uncs
@show fit_fire_load193.uncs

figure(figsize=[12.6, 5.6])
subplot(1, 2, 1)
plot(sizes, ice_evt_diff[5], "C0.", label="5")
plot(fit_ice_load5.plotx, fit_ice_load5.ploty, "C0")
plot(sizes, ice_evt_diff[11], "C1.", label="11")
plot(fit_ice_load11.plotx, fit_ice_load11.ploty, "C1")
plot(sizes, ice_evt_diff[193], "C2.", label="193")
plot(fit_ice_load193.plotx, fit_ice_load193.ploty, "C2")
text(200, 0.3, "TLB_L1=$(fit_ice_load5.uncs[1])", color="C0", fontsize=10)
text(200, 0.2, "TLB_L1=$(fit_ice_load193.uncs[1])", color="C2", fontsize=10)
text(1800, 0.25, "TLB_L2=$(fit_ice_load11.uncs[1])", color="C1", fontsize=10)
axvline(128, color="r")
axvline(1024, color="g")
gca()[:set_xscale]("log")
xlim([64, 32 * 256])
ylim([0, ylim()[2]])
xlabel("Pages")
ylabel("Count Difference")
legend(ncol=6, fontsize=8)
title("Ice Storm (Load)")
subplot(1, 2, 2)
plot(sizes, fire_evt_diff[5], "C0.", label="5")
plot(fit_fire_load5.plotx, fit_fire_load5.ploty, "C0")
plot(sizes, fire_evt_diff[11], "C1.", label="11")
plot(fit_fire_load11.plotx, fit_fire_load11.ploty, "C1")
plot(sizes, fire_evt_diff[193], "C2.", label="193")
plot(fit_fire_load193.plotx, fit_fire_load193.ploty, "C2")
text(300, 0.3, "TLB_L1=$(fit_fire_load5.uncs[1])", color="C0", fontsize=10)
text(300, 0.2, "TLB_L1=$(fit_fire_load193.uncs[1])", color="C2", fontsize=10)
text(1800, 0.25, "TLB_L2=$(fit_fire_load11.uncs[1])", color="C1", fontsize=10)
axvline(160, color="r")
axvline(3072, color="g")
gca()[:set_xscale]("log")
xlim([64, 32 * 256])
ylim([0, ylim()[2]])
xlabel("Page Count")
ylabel("Count Difference")
legend(ncol=6, fontsize=8)
title("Fire Storm (Load)")
tight_layout()
NaCsPlot.maybe_save("$(prefix)_load_fit")

sizes, ice_evt_diff, fire_evt_diff = resorted_data.store

const fit_ice_store5 = fit_data(model_miss, sizes, ice_evt_diff[5], [128.0])
const fit_ice_store11 = fit_data(model_miss, sizes, ice_evt_diff[11], [1024.0])
const fit_ice_store193 = fit_data(model_miss, sizes, ice_evt_diff[193], [128.0])
const fit_fire_store5 = fit_data(model_miss, sizes, fire_evt_diff[5], [160.0])
const fit_fire_store11 = fit_data(model_miss, sizes, fire_evt_diff[11], [3072.0])
const fit_fire_store193 = fit_data(model_miss, sizes, fire_evt_diff[193], [160.0])

@show fit_ice_store5.uncs
@show fit_ice_store11.uncs
@show fit_ice_store193.uncs
@show fit_fire_store5.uncs
@show fit_fire_store11.uncs
@show fit_fire_store193.uncs

figure(figsize=[12.6, 5.6])
subplot(1, 2, 1)
plot(sizes, ice_evt_diff[5], "C0.", label="5")
plot(fit_ice_store5.plotx, fit_ice_store5.ploty, "C0")
plot(sizes, ice_evt_diff[11], "C1.", label="11")
plot(fit_ice_store11.plotx, fit_ice_store11.ploty, "C1")
plot(sizes, ice_evt_diff[193], "C2.", label="193")
plot(fit_ice_store193.plotx, fit_ice_store193.ploty, "C2")
text(200, 0.3, "TLB_L1=$(fit_ice_store5.uncs[1])", color="C0", fontsize=10)
text(200, 0.2, "TLB_L1=$(fit_ice_store193.uncs[1])", color="C2", fontsize=10)
text(1800, 0.25, "TLB_L2=$(fit_ice_store11.uncs[1])", color="C1", fontsize=10)
axvline(128, color="r")
axvline(1024, color="g")
gca()[:set_xscale]("log")
xlim([64, 32 * 256])
ylim([0, ylim()[2]])
xlabel("Pages")
ylabel("Count Difference")
legend(ncol=6, fontsize=8)
title("Ice Storm (Store)")
subplot(1, 2, 2)
plot(sizes, fire_evt_diff[5], "C0.", label="5")
plot(fit_fire_store5.plotx, fit_fire_store5.ploty, "C0")
plot(sizes, fire_evt_diff[11], "C1.", label="11")
plot(fit_fire_store11.plotx, fit_fire_store11.ploty, "C1")
plot(sizes, fire_evt_diff[193], "C2.", label="193")
plot(fit_fire_store193.plotx, fit_fire_store193.ploty, "C2")
text(300, 0.3, "TLB_L1=$(fit_fire_store5.uncs[1])", color="C0", fontsize=10)
text(300, 0.2, "TLB_L1=$(fit_fire_store193.uncs[1])", color="C2", fontsize=10)
text(1800, 0.25, "TLB_L2=$(fit_fire_store11.uncs[1])", color="C1", fontsize=10)
axvline(160, color="r")
axvline(3072, color="g")
gca()[:set_xscale]("log")
xlim([64, 32 * 256])
ylim([0, ylim()[2]])
xlabel("Page Count")
ylabel("Count Difference")
legend(ncol=6, fontsize=8)
title("Fire Storm (Store)")
tight_layout()
NaCsPlot.maybe_save("$(prefix)_store_fit")

NaCsPlot.maybe_show()
