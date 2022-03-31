#!/usr/bin/julia

using DelimitedFiles

function load_summary(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function find_stable(data)
    lines = Vector{Float64}[]
    for i in 1:size(data, 1)
        if data[i, 4] == 0 && data[i, 5] == 0 && data[i, 8] == 0 && data[i, 9] == 0
            push!(lines, data[i, :])
        end
    end
    return lines
end

function resave_stable(outfile, infile)
    data = load_summary(infile)
    stable_lines = find_stable(data)
    open(outfile, "w") do fd
        println(fd, "evt,ice_ma,ice_mb,fire_ma,fire_mb")
        for line in stable_lines
            println(fd, "$(Int(line[1])),$(line[2]),$(line[3]),$(line[6]),$(line[7])")
        end
    end
end

function resave_stable_all(dir)
    suffix = "_summary_fit.csv"
    for f in readdir(dir, join=true)
        endswith(f, suffix) || continue
        resave_stable(f[1:end - length(suffix)] * "-stable.csv", f)
    end
end
