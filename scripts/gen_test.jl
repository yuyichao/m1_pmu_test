#!/usr/bin/julia

struct InstTest
    name::String
    asm::String
    metadata::Dict{String,Float64}
end

struct InstTestGroup
    name::String
    tests::Vector{InstTest}
    InstTestGroup(name) = new(name, InstTest[])
end

function add_test!(grp::InstTestGroup, name, asm, metadata)
    push!(grp.tests, InstTest(name, asm, metadata))
end

function gen_metadata(grp::InstTestGroup, dir)
    for test in grp.tests
        open(joinpath(dir, "test_$(test.name).yml"), "w") do fh
            for (key, val) in test.metadata
                println(fh, "$key: $val")
            end
        end
    end
end

function gen_asm_src(grp::InstTestGroup, file)
    counter = 0
    open(file, "w") do fh
        println(fh, """
        .arch armv8.5-a+crypto
        .bss
        .align 6
.Lgvbuffer:
        .zero        256
""")
        for test in grp.tests
            counter += 1
            println(fh, """
        .text
        .align        2
        .p2align 4,,11
        .type        kernel_$(test.name), %function
kernel_$(test.name):
""")
            println(fh, replace(test.asm, "%="=>"$(counter)"))
            println(fh, """
        .size        kernel_$(test.name), .-kernel_$(test.name)
""")
        end
    end
end

function gen_cpp_src(grp::InstTestGroup, file)
    open(file, "w") do fh
        println(fh, """
//

#include "libtests.h"

""")
        for test in grp.tests
            println(fh, """
extern "C" void kernel_$(test.name)(int n);
extern "C" void runtest_$(test.name)(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_$(test.name), n, ice_res, fire_res);
}
""")
        end
    end
end

function gen_jl_src(grp::InstTestGroup, file)
    open(file, "w") do fh
        println(fh, """
#!/usr/bin/julia
""")
        for test in grp.tests
            println(fh, """
runtest_$(test.name)(n, ice_res, fire_res) =
    ccall((:runtest_$(test.name), "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)
""")
        end
        println(fh, """
const testgrp_$(grp.name) = Dict{String,Function}(
""")
        for test in grp.tests
            println(fh, "    \"$(test.name)\"=>runtest_$(test.name),\n")
        end
        println(fh, ")\n")
    end
end

function gen_all(grp::InstTestGroup)
    basedir = joinpath(@__DIR__, "..")
    gen_metadata(grp, joinpath(basedir, "data"))
    gen_asm_src(grp, joinpath(basedir, "src", "libtests_$(grp.name).s"))
    gen_cpp_src(grp, joinpath(basedir, "src", "libtests_$(grp.name).cpp"))
    gen_jl_src(grp, joinpath(basedir, "scripts", "libtests_$(grp.name).jl"))
end
