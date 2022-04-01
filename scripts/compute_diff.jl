#!/usr/bin/julia

using DelimitedFiles

function load_summary(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function find_diff(data1, data2)
    lines = Vector{Float64}[]
    for i in 1:size(data1, 1)
        if abs(data1[i, 3] - data2[i, 3]) < 0.1 && abs(data1[i, 7] - data2[i, 7]) < 0.1
            continue
        end
        push!(lines, [data1[i, :]; data2[i, 2:end]])
    end
    return lines
end

function resave_diff(outfile, infile1, infile2)
    data1 = load_summary(infile1)
    data2 = load_summary(infile2)
    diff_lines = find_diff(data1, data2)
    open(outfile, "w") do fd
        println(fd, "evt,ice_ma1,ice_mb1,fire_ma1,fire_mb1,ice_ma2,ice_mb2,fire_ma2,fire_mb2")
        for line in diff_lines
            println(fd, "$(Int(line[1])),$(join(line[[2,3,6,7,10,11,14,15]], ","))")
        end
    end
end
