#!/usr/bin/julia

using DelimitedFiles

function load_summary(file)
    return readdlm(file, ',', Float64, skipstart=1)
end

function str(v)
    if isinteger(v)
        return "$(Int(v))"
    end
    return "$v"
end

function resave_slopes(outfile, infile)
    data = load_summary(infile)
    open(outfile, "w") do fd
        println(fd, "evt,ice_mb,fire_mb")
        for i in 1:size(data, 1)
            if data[i, 3] == 0 && data[i, 7] == 0
                continue
            end
            println(fd, "$(Int(data[i, 1])),$(str(data[i, 3])),$(str(data[i, 7]))")
        end
    end
end

function resave_slopes_all(dir)
    suffix = "_summary_fit.csv"
    for f in readdir(dir, join=true)
        endswith(f, suffix) || continue
        resave_slopes(f[1:end - length(suffix)] * "-summary_slopes.csv", f)
    end
end
