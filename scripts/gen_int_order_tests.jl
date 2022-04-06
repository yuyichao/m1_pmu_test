#!/usr/bin/julia

include("gen_test.jl")

grp = InstTestGroup("int3")

function add_int_test(grp, insts)
    name = join((inst.first for inst in insts), "_")
    meta = Dict("inst_addw"=>1, "inst_cmpw"=>1, "inst_bcond"=>1)
    for inst in insts
        key = "inst_$(inst.first)"
        meta[key] = get(meta, key, 0) + 1
    end
    code = join(("        $(inst.second)\n" for inst in insts), "")
    add_test!(grp, "int2_$(name)",
              """
        adrp x7, .Lgvbuffer
        add x7, x7, :lo12:.Lgvbuffer
        mov x1, 0
        mov x2, 1
        mov x3, 2
        mov x4, 0
        mov x5, 0
        mov x6, 0
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
.Lloop%=:\n""" * code * """
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop%=
        ret
""", meta)
end

const insts = ["add3x"=>"add x9, x3, x2",
               "mul3x"=>"mul x10, x2, x6",
               "udiv3x"=>"udiv x11, x2, x3",
               "maddx"=>"madd x12, x2, x3, x3",
               "crc32cx"=>"crc32cx w13, w4, x3",]

using Combinatorics

for c in permutations([1, 2, 3, 4, 5])
    add_int_test(grp, [insts[i] for i in c])
end

gen_all(grp)
