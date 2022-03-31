#!/usr/bin/julia

using DelimitedFiles

function load_stable(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function find_nontrivial(data)
    lines = Vector{Float64}[]
    for i in 1:size(data, 1)
        if data[i, 3] == 0 && data[i, 5] == 0
            continue
        end
        push!(lines, data[i, :])
    end
    return lines
end

function resave_nontrivial(outfile, infile)
    data = load_stable(infile)
    nontrivial_lines = find_nontrivial(data)
    open(outfile, "w") do fd
        println(fd, "evt,ice_ma,ice_mb,fire_ma,fire_mb")
        for line in nontrivial_lines
            println(fd, "$(Int(line[1])),$(line[2]),$(line[3]),$(line[4]),$(line[5])")
        end
    end
end

function resave_nontrivial_all(dir)
    suffix = "-stable.csv"
    for f in readdir(dir, join=true)
        endswith(f, suffix) || continue
        resave_nontrivial(f[1:end - length(suffix)] * "-nontrivial_stable.csv", f)
    end
end
