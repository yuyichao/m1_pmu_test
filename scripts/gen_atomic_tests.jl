#!/usr/bin/julia

include("gen_test.jl")

grp = InstTestGroup("atomic")

function add_swp_test(grp, suffix, regprefix)
    add_test!(grp, "swp$(suffix)_$(regprefix)",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop%=:
        swp$(suffix) $(regprefix)4, $(regprefix)3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_swp$(suffix)$(regprefix)"=>1, "inst_addw"=>1,
          "inst_cmpw"=>1, "inst_bcond"=>1))
end

for suffix in ["", "a", "l", "al"]
    for regprefix in ["w", "x"]
        add_swp_test(grp, suffix, regprefix)
    end
end

function add_cas_test(grp, suffix, regprefix)
    add_test!(grp, "cas$(suffix)_$(regprefix)",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop%=:
        mov x4, 0
        cas$(suffix) $(regprefix)4, $(regprefix)3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_cas$(suffix)$(regprefix)"=>1, "inst_addw"=>1,
          "inst_cmpw"=>1, "inst_movx_const"=>1, "inst_bcond"=>1))
end

function add_cas_fail_test(grp, suffix, regprefix)
    add_test!(grp, "cas$(suffix)_fail_$(regprefix)",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop%=:
        mov x4, 1
        cas$(suffix) $(regprefix)4, $(regprefix)3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_cas$(suffix)$(regprefix)"=>1, "inst_addw"=>1,
          "inst_cmpw"=>1, "inst_movx_const"=>1, "inst_bcond"=>1, "cas_fail"=>1))
end

function add_casp_test(grp, suffix, regprefix)
    add_test!(grp, "casp$(suffix)_$(regprefix)",
              """
        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
.Lloop%=:
        mov x4, 0
        mov x5, 0
        casp$(suffix) $(regprefix)4, $(regprefix)5, $(regprefix)2, $(regprefix)3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_casp$(suffix)$(regprefix)"=>1, "inst_addw"=>1,
          "inst_cmpw"=>1, "inst_movx_const"=>2, "inst_bcond"=>1))
end

function add_casp_fail_test(grp, suffix, regprefix)
    add_test!(grp, "casp$(suffix)_fail_$(regprefix)",
              """
        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop%=:
        mov x4, 1
        mov x5, 1
        casp$(suffix) $(regprefix)4, $(regprefix)5, $(regprefix)2, $(regprefix)3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_casp$(suffix)$(regprefix)"=>1, "inst_addw"=>1,
          "inst_cmpw"=>1, "inst_movx_const"=>2, "inst_bcond"=>1, "cas_fail"=>1))
end

for suffix in ["", "a", "l", "al"]
    for regprefix in ["w", "x"]
        add_cas_test(grp, suffix, regprefix)
        add_cas_fail_test(grp, suffix, regprefix)
        add_casp_test(grp, suffix, regprefix)
        add_casp_fail_test(grp, suffix, regprefix)
    end
end

function add_ldadd_test(grp, suffix, regprefix)
    add_test!(grp, "ldadd$(suffix)_$(regprefix)",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop%=:
        ldadd$(suffix) $(regprefix)4, $(regprefix)3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_ldadd$(suffix)$(regprefix)"=>1, "inst_addw"=>1,
          "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_stadd_test(grp, suffix, regprefix)
    if suffix == "a" || suffix == "al"
        return
    end
    add_test!(grp, "stadd$(suffix)_$(regprefix)",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop%=:
        stadd$(suffix) $(regprefix)3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_stadd$(suffix)$(regprefix)"=>1, "inst_addw"=>1,
          "inst_cmpw"=>1, "inst_bcond"=>1))
end

for suffix in ["", "a", "l", "al"]
    for regprefix in ["w", "x"]
        add_ldadd_test(grp, suffix, regprefix)
        add_stadd_test(grp, suffix, regprefix)
    end
end

gen_all(grp)
