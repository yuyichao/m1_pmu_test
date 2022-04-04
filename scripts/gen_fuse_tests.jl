#!/usr/bin/julia

include("gen_test.jl")

grp = InstTestGroup("fuse")

function add_nop_precmp_test(grp, n)
    add_test!(grp, "nop_precmp_$(n)",
              """
        mov w1, 0
.Lloop%=:
        add w1, w1, 1
        cmp w1, w0\n""" * "        nop\n"^n * """
        bne .Lloop%=
        ret
""", Dict("inst_nop"=>n, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

for n in [1, 4, 16, 64]
    add_nop_precmp_test(grp, n)
end

gen_all(grp)
