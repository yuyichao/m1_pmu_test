#!/usr/bin/julia

include("gen_test.jl")

grp = InstTestGroup("int")

function add_nop_test(grp, n)
    add_test!(grp, "nop_$(n)",
              """
        mov w1, 0
.Lloop%=:\n""" * "        nop\n"^n * """
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_nop"=>n, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_add_test(grp, n)
    add_test!(grp, "addx_$(n)",
              """
        mov w1, 0
        mov x2, 0
.Lloop%=:\n""" * "        add x3, x2, x2\n"^n * """
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_add3x"=>n, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_mul_test(grp, n)
    add_test!(grp, "mulx_$(n)",
              """
        mov w1, 0
        mov x2, 0
.Lloop%=:\n""" * "        mul x3, x2, x2\n"^n * """
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_mul3x"=>n, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_udiv_test(grp, n)
    add_test!(grp, "udivx_$(n)",
              """
        mov w1, 0
        mov x2, 2
.Lloop%=:\n""" * "        udiv x3, x2, x2\n"^n * """
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_udiv3x"=>n, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_madd_test(grp, n)
    add_test!(grp, "maddx_$(n)",
              """
        mov w1, 0
        mov x2, 2
        mov x3, 1
        mov x4, 5
.Lloop%=:\n""" * "        madd x5, x2, x3, x4\n"^n * """
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_madd3x"=>n, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_crc32c_test(grp, n)
    add_test!(grp, "crc32cx_$(n)",
              """
        mov w1, 0
        mov x2, 2
        mov x3, 1
.Lloop%=:\n""" * "        crc32cx w4, w2, x3\n"^n * """
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_crc32cx"=>n, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

for n in [1, 4, 16, 64]
    add_nop_test(grp, n)
    add_add_test(grp, n)
    add_mul_test(grp, n)
    add_udiv_test(grp, n)
    add_madd_test(grp, n)
    add_crc32c_test(grp, n)
end

function add_loadx_test(grp)
    add_test!(grp, "loadx",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 1
.Lloop%=:
        ldr x4, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_ldrx"=>1, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_loadx_regoffset_test(grp)
    add_test!(grp, "loadx_regoffset",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 1
.Lloop%=:
        add x4, x2, x3, lsl #3
        ldr x4, [x4]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_add3x"=>1, "inst_ldrx"=>1, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_loadx_regoffset_addrmode_test(grp)
    add_test!(grp, "loadx_regoffset_addrmode",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 1
.Lloop%=:
        ldr x4, [x2, x3, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_ldrx_regoffset"=>1, "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

function add_loadx_regoffset_dup_addrmode_test(grp)
    add_test!(grp, "loadx_regoffset_dup_addrmode",
              """
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 1
.Lloop%=:
        add x4, x2, x3, lsl #3
        ldr x4, [x2, x3, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", Dict("inst_add3x"=>1, "inst_ldrx_regoffset"=>1,
          "inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1))
end

add_loadx_test(grp)
add_loadx_regoffset_test(grp)
add_loadx_regoffset_addrmode_test(grp)
add_loadx_regoffset_dup_addrmode_test(grp)

gen_all(grp)
