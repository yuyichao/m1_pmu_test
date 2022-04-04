        .arch armv8.5-a+crypto
        .bss
        .align 6
.Lgvbuffer:
        .zero        256

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_nop
        .type        kernel_int2_mul3x_nop, %function
kernel_int2_mul3x_nop:
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
.Lloop1:
        mul x10, x2, x6
        nop
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop1
        ret
        .size        kernel_int2_mul3x_nop, .-kernel_int2_mul3x_nop

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_ldrx_regoffset_maddx
        .type        kernel_int2_ldrx_regoffset_maddx, %function
kernel_int2_ldrx_regoffset_maddx:
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
.Lloop2:
        ldr x14, [x7, x2, lsl #3]
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop2
        ret
        .size        kernel_int2_ldrx_regoffset_maddx, .-kernel_int2_ldrx_regoffset_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_ldrx
        .type        kernel_int2_maddx_ldrx, %function
kernel_int2_maddx_ldrx:
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
.Lloop3:
        madd x12, x2, x3, x3
        ldr x14, [x7]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop3
        ret
        .size        kernel_int2_maddx_ldrx, .-kernel_int2_maddx_ldrx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_ldrx_mul3x
        .type        kernel_int2_ldrx_mul3x, %function
kernel_int2_ldrx_mul3x:
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
.Lloop4:
        ldr x14, [x7]
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop4
        ret
        .size        kernel_int2_ldrx_mul3x, .-kernel_int2_ldrx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_ldrx_ldrx_regoffset
        .type        kernel_int2_ldrx_ldrx_regoffset, %function
kernel_int2_ldrx_ldrx_regoffset:
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
.Lloop5:
        ldr x14, [x7]
        ldr x14, [x7, x2, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop5
        ret
        .size        kernel_int2_ldrx_ldrx_regoffset, .-kernel_int2_ldrx_ldrx_regoffset

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_ldrx_regoffset
        .type        kernel_int2_maddx_ldrx_regoffset, %function
kernel_int2_maddx_ldrx_regoffset:
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
.Lloop6:
        madd x12, x2, x3, x3
        ldr x14, [x7, x2, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop6
        ret
        .size        kernel_int2_maddx_ldrx_regoffset, .-kernel_int2_maddx_ldrx_regoffset

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_add3x
        .type        kernel_int2_maddx_add3x, %function
kernel_int2_maddx_add3x:
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
.Lloop7:
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop7
        ret
        .size        kernel_int2_maddx_add3x, .-kernel_int2_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_nop
        .type        kernel_int2_add3x_nop, %function
kernel_int2_add3x_nop:
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
.Lloop8:
        add x9, x3, x2
        nop
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop8
        ret
        .size        kernel_int2_add3x_nop, .-kernel_int2_add3x_nop

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_add3x_ldrx_regoffset
        .type        kernel_int2_mul3x_add3x_ldrx_regoffset, %function
kernel_int2_mul3x_add3x_ldrx_regoffset:
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
.Lloop9:
        mul x10, x2, x6
        add x9, x3, x2
        ldr x14, [x7, x2, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop9
        ret
        .size        kernel_int2_mul3x_add3x_ldrx_regoffset, .-kernel_int2_mul3x_add3x_ldrx_regoffset

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_crc32cx_nop
        .type        kernel_int2_udiv3x_crc32cx_nop, %function
kernel_int2_udiv3x_crc32cx_nop:
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
.Lloop10:
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        nop
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop10
        ret
        .size        kernel_int2_udiv3x_crc32cx_nop, .-kernel_int2_udiv3x_crc32cx_nop

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_nop_udiv3x_maddx
        .type        kernel_int2_nop_udiv3x_maddx, %function
kernel_int2_nop_udiv3x_maddx:
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
.Lloop11:
        nop
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop11
        ret
        .size        kernel_int2_nop_udiv3x_maddx, .-kernel_int2_nop_udiv3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_ldrx_regoffset_ldrx
        .type        kernel_int2_add3x_ldrx_regoffset_ldrx, %function
kernel_int2_add3x_ldrx_regoffset_ldrx:
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
.Lloop12:
        add x9, x3, x2
        ldr x14, [x7, x2, lsl #3]
        ldr x14, [x7]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop12
        ret
        .size        kernel_int2_add3x_ldrx_regoffset_ldrx, .-kernel_int2_add3x_ldrx_regoffset_ldrx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_ldrx_nop_add3x
        .type        kernel_int2_mul3x_ldrx_nop_add3x, %function
kernel_int2_mul3x_ldrx_nop_add3x:
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
.Lloop13:
        mul x10, x2, x6
        ldr x14, [x7]
        nop
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop13
        ret
        .size        kernel_int2_mul3x_ldrx_nop_add3x, .-kernel_int2_mul3x_ldrx_nop_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_udiv3x_maddx_add3x
        .type        kernel_int2_mul3x_udiv3x_maddx_add3x, %function
kernel_int2_mul3x_udiv3x_maddx_add3x:
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
.Lloop14:
        mul x10, x2, x6
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop14
        ret
        .size        kernel_int2_mul3x_udiv3x_maddx_add3x, .-kernel_int2_mul3x_udiv3x_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_ldrx_regoffset_nop_crc32cx_maddx
        .type        kernel_int2_ldrx_regoffset_nop_crc32cx_maddx, %function
kernel_int2_ldrx_regoffset_nop_crc32cx_maddx:
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
.Lloop15:
        ldr x14, [x7, x2, lsl #3]
        nop
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop15
        ret
        .size        kernel_int2_ldrx_regoffset_nop_crc32cx_maddx, .-kernel_int2_ldrx_regoffset_nop_crc32cx_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset
        .type        kernel_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset, %function
kernel_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset:
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
.Lloop16:
        nop
        mul x10, x2, x6
        ldr x14, [x7]
        udiv x11, x2, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        mul x10, x2, x6
        ldr x14, [x7, x2, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop16
        ret
        .size        kernel_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset, .-kernel_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset
        .type        kernel_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset, %function
kernel_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset:
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
.Lloop17:
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        ldr x14, [x7, x2, lsl #3]
        ldr x14, [x7]
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        ldr x14, [x7, x2, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop17
        ret
        .size        kernel_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset, .-kernel_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset
        .type        kernel_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset, %function
kernel_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset:
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
.Lloop18:
        ldr x14, [x7]
        mul x10, x2, x6
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        nop
        ldr x14, [x7]
        add x9, x3, x2
        nop
        udiv x11, x2, x3
        mul x10, x2, x6
        ldr x14, [x7, x2, lsl #3]
        ldr x14, [x7, x2, lsl #3]
        nop
        madd x12, x2, x3, x3
        nop
        ldr x14, [x7, x2, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop18
        ret
        .size        kernel_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset, .-kernel_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x
        .type        kernel_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x, %function
kernel_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x:
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
.Lloop19:
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add x9, x3, x2
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        madd x12, x2, x3, x3
        ldr x14, [x7]
        madd x12, x2, x3, x3
        ldr x14, [x7]
        crc32cx w13, w4, x3
        ldr x14, [x7]
        ldr x14, [x7]
        mul x10, x2, x6
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop19
        ret
        .size        kernel_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x, .-kernel_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x
