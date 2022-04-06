        .arch armv8.5-a+crypto
        .bss
        .align 6
.Lgvbuffer:
        .zero        256

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_mul3x_udiv3x_maddx_crc32cx
        .type        kernel_int2_add3x_mul3x_udiv3x_maddx_crc32cx, %function
kernel_int2_add3x_mul3x_udiv3x_maddx_crc32cx:
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
        add x9, x3, x2
        mul x10, x2, x6
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop1
        ret
        .size        kernel_int2_add3x_mul3x_udiv3x_maddx_crc32cx, .-kernel_int2_add3x_mul3x_udiv3x_maddx_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_mul3x_udiv3x_crc32cx_maddx
        .type        kernel_int2_add3x_mul3x_udiv3x_crc32cx_maddx, %function
kernel_int2_add3x_mul3x_udiv3x_crc32cx_maddx:
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
        add x9, x3, x2
        mul x10, x2, x6
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop2
        ret
        .size        kernel_int2_add3x_mul3x_udiv3x_crc32cx_maddx, .-kernel_int2_add3x_mul3x_udiv3x_crc32cx_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_mul3x_maddx_udiv3x_crc32cx
        .type        kernel_int2_add3x_mul3x_maddx_udiv3x_crc32cx, %function
kernel_int2_add3x_mul3x_maddx_udiv3x_crc32cx:
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
        add x9, x3, x2
        mul x10, x2, x6
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop3
        ret
        .size        kernel_int2_add3x_mul3x_maddx_udiv3x_crc32cx, .-kernel_int2_add3x_mul3x_maddx_udiv3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_mul3x_maddx_crc32cx_udiv3x
        .type        kernel_int2_add3x_mul3x_maddx_crc32cx_udiv3x, %function
kernel_int2_add3x_mul3x_maddx_crc32cx_udiv3x:
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
        add x9, x3, x2
        mul x10, x2, x6
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop4
        ret
        .size        kernel_int2_add3x_mul3x_maddx_crc32cx_udiv3x, .-kernel_int2_add3x_mul3x_maddx_crc32cx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_mul3x_crc32cx_udiv3x_maddx
        .type        kernel_int2_add3x_mul3x_crc32cx_udiv3x_maddx, %function
kernel_int2_add3x_mul3x_crc32cx_udiv3x_maddx:
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
        add x9, x3, x2
        mul x10, x2, x6
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop5
        ret
        .size        kernel_int2_add3x_mul3x_crc32cx_udiv3x_maddx, .-kernel_int2_add3x_mul3x_crc32cx_udiv3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_mul3x_crc32cx_maddx_udiv3x
        .type        kernel_int2_add3x_mul3x_crc32cx_maddx_udiv3x, %function
kernel_int2_add3x_mul3x_crc32cx_maddx_udiv3x:
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
        add x9, x3, x2
        mul x10, x2, x6
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop6
        ret
        .size        kernel_int2_add3x_mul3x_crc32cx_maddx_udiv3x, .-kernel_int2_add3x_mul3x_crc32cx_maddx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_udiv3x_mul3x_maddx_crc32cx
        .type        kernel_int2_add3x_udiv3x_mul3x_maddx_crc32cx, %function
kernel_int2_add3x_udiv3x_mul3x_maddx_crc32cx:
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
        add x9, x3, x2
        udiv x11, x2, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop7
        ret
        .size        kernel_int2_add3x_udiv3x_mul3x_maddx_crc32cx, .-kernel_int2_add3x_udiv3x_mul3x_maddx_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_udiv3x_mul3x_crc32cx_maddx
        .type        kernel_int2_add3x_udiv3x_mul3x_crc32cx_maddx, %function
kernel_int2_add3x_udiv3x_mul3x_crc32cx_maddx:
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
        udiv x11, x2, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop8
        ret
        .size        kernel_int2_add3x_udiv3x_mul3x_crc32cx_maddx, .-kernel_int2_add3x_udiv3x_mul3x_crc32cx_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_udiv3x_maddx_mul3x_crc32cx
        .type        kernel_int2_add3x_udiv3x_maddx_mul3x_crc32cx, %function
kernel_int2_add3x_udiv3x_maddx_mul3x_crc32cx:
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
        add x9, x3, x2
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop9
        ret
        .size        kernel_int2_add3x_udiv3x_maddx_mul3x_crc32cx, .-kernel_int2_add3x_udiv3x_maddx_mul3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_udiv3x_maddx_crc32cx_mul3x
        .type        kernel_int2_add3x_udiv3x_maddx_crc32cx_mul3x, %function
kernel_int2_add3x_udiv3x_maddx_crc32cx_mul3x:
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
        add x9, x3, x2
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop10
        ret
        .size        kernel_int2_add3x_udiv3x_maddx_crc32cx_mul3x, .-kernel_int2_add3x_udiv3x_maddx_crc32cx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_udiv3x_crc32cx_mul3x_maddx
        .type        kernel_int2_add3x_udiv3x_crc32cx_mul3x_maddx, %function
kernel_int2_add3x_udiv3x_crc32cx_mul3x_maddx:
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
        add x9, x3, x2
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop11
        ret
        .size        kernel_int2_add3x_udiv3x_crc32cx_mul3x_maddx, .-kernel_int2_add3x_udiv3x_crc32cx_mul3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_udiv3x_crc32cx_maddx_mul3x
        .type        kernel_int2_add3x_udiv3x_crc32cx_maddx_mul3x, %function
kernel_int2_add3x_udiv3x_crc32cx_maddx_mul3x:
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
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop12
        ret
        .size        kernel_int2_add3x_udiv3x_crc32cx_maddx_mul3x, .-kernel_int2_add3x_udiv3x_crc32cx_maddx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_maddx_mul3x_udiv3x_crc32cx
        .type        kernel_int2_add3x_maddx_mul3x_udiv3x_crc32cx, %function
kernel_int2_add3x_maddx_mul3x_udiv3x_crc32cx:
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
        add x9, x3, x2
        madd x12, x2, x3, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop13
        ret
        .size        kernel_int2_add3x_maddx_mul3x_udiv3x_crc32cx, .-kernel_int2_add3x_maddx_mul3x_udiv3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_maddx_mul3x_crc32cx_udiv3x
        .type        kernel_int2_add3x_maddx_mul3x_crc32cx_udiv3x, %function
kernel_int2_add3x_maddx_mul3x_crc32cx_udiv3x:
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
        add x9, x3, x2
        madd x12, x2, x3, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop14
        ret
        .size        kernel_int2_add3x_maddx_mul3x_crc32cx_udiv3x, .-kernel_int2_add3x_maddx_mul3x_crc32cx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_maddx_udiv3x_mul3x_crc32cx
        .type        kernel_int2_add3x_maddx_udiv3x_mul3x_crc32cx, %function
kernel_int2_add3x_maddx_udiv3x_mul3x_crc32cx:
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
        add x9, x3, x2
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop15
        ret
        .size        kernel_int2_add3x_maddx_udiv3x_mul3x_crc32cx, .-kernel_int2_add3x_maddx_udiv3x_mul3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_maddx_udiv3x_crc32cx_mul3x
        .type        kernel_int2_add3x_maddx_udiv3x_crc32cx_mul3x, %function
kernel_int2_add3x_maddx_udiv3x_crc32cx_mul3x:
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
        add x9, x3, x2
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop16
        ret
        .size        kernel_int2_add3x_maddx_udiv3x_crc32cx_mul3x, .-kernel_int2_add3x_maddx_udiv3x_crc32cx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_maddx_crc32cx_mul3x_udiv3x
        .type        kernel_int2_add3x_maddx_crc32cx_mul3x_udiv3x, %function
kernel_int2_add3x_maddx_crc32cx_mul3x_udiv3x:
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
        add x9, x3, x2
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop17
        ret
        .size        kernel_int2_add3x_maddx_crc32cx_mul3x_udiv3x, .-kernel_int2_add3x_maddx_crc32cx_mul3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_maddx_crc32cx_udiv3x_mul3x
        .type        kernel_int2_add3x_maddx_crc32cx_udiv3x_mul3x, %function
kernel_int2_add3x_maddx_crc32cx_udiv3x_mul3x:
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
        add x9, x3, x2
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop18
        ret
        .size        kernel_int2_add3x_maddx_crc32cx_udiv3x_mul3x, .-kernel_int2_add3x_maddx_crc32cx_udiv3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_crc32cx_mul3x_udiv3x_maddx
        .type        kernel_int2_add3x_crc32cx_mul3x_udiv3x_maddx, %function
kernel_int2_add3x_crc32cx_mul3x_udiv3x_maddx:
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
        add x9, x3, x2
        crc32cx w13, w4, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop19
        ret
        .size        kernel_int2_add3x_crc32cx_mul3x_udiv3x_maddx, .-kernel_int2_add3x_crc32cx_mul3x_udiv3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_crc32cx_mul3x_maddx_udiv3x
        .type        kernel_int2_add3x_crc32cx_mul3x_maddx_udiv3x, %function
kernel_int2_add3x_crc32cx_mul3x_maddx_udiv3x:
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
.Lloop20:
        add x9, x3, x2
        crc32cx w13, w4, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop20
        ret
        .size        kernel_int2_add3x_crc32cx_mul3x_maddx_udiv3x, .-kernel_int2_add3x_crc32cx_mul3x_maddx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_crc32cx_udiv3x_mul3x_maddx
        .type        kernel_int2_add3x_crc32cx_udiv3x_mul3x_maddx, %function
kernel_int2_add3x_crc32cx_udiv3x_mul3x_maddx:
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
.Lloop21:
        add x9, x3, x2
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop21
        ret
        .size        kernel_int2_add3x_crc32cx_udiv3x_mul3x_maddx, .-kernel_int2_add3x_crc32cx_udiv3x_mul3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_crc32cx_udiv3x_maddx_mul3x
        .type        kernel_int2_add3x_crc32cx_udiv3x_maddx_mul3x, %function
kernel_int2_add3x_crc32cx_udiv3x_maddx_mul3x:
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
.Lloop22:
        add x9, x3, x2
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop22
        ret
        .size        kernel_int2_add3x_crc32cx_udiv3x_maddx_mul3x, .-kernel_int2_add3x_crc32cx_udiv3x_maddx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_crc32cx_maddx_mul3x_udiv3x
        .type        kernel_int2_add3x_crc32cx_maddx_mul3x_udiv3x, %function
kernel_int2_add3x_crc32cx_maddx_mul3x_udiv3x:
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
.Lloop23:
        add x9, x3, x2
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop23
        ret
        .size        kernel_int2_add3x_crc32cx_maddx_mul3x_udiv3x, .-kernel_int2_add3x_crc32cx_maddx_mul3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_add3x_crc32cx_maddx_udiv3x_mul3x
        .type        kernel_int2_add3x_crc32cx_maddx_udiv3x_mul3x, %function
kernel_int2_add3x_crc32cx_maddx_udiv3x_mul3x:
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
.Lloop24:
        add x9, x3, x2
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop24
        ret
        .size        kernel_int2_add3x_crc32cx_maddx_udiv3x_mul3x, .-kernel_int2_add3x_crc32cx_maddx_udiv3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_add3x_udiv3x_maddx_crc32cx
        .type        kernel_int2_mul3x_add3x_udiv3x_maddx_crc32cx, %function
kernel_int2_mul3x_add3x_udiv3x_maddx_crc32cx:
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
.Lloop25:
        mul x10, x2, x6
        add x9, x3, x2
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop25
        ret
        .size        kernel_int2_mul3x_add3x_udiv3x_maddx_crc32cx, .-kernel_int2_mul3x_add3x_udiv3x_maddx_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_add3x_udiv3x_crc32cx_maddx
        .type        kernel_int2_mul3x_add3x_udiv3x_crc32cx_maddx, %function
kernel_int2_mul3x_add3x_udiv3x_crc32cx_maddx:
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
.Lloop26:
        mul x10, x2, x6
        add x9, x3, x2
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop26
        ret
        .size        kernel_int2_mul3x_add3x_udiv3x_crc32cx_maddx, .-kernel_int2_mul3x_add3x_udiv3x_crc32cx_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_add3x_maddx_udiv3x_crc32cx
        .type        kernel_int2_mul3x_add3x_maddx_udiv3x_crc32cx, %function
kernel_int2_mul3x_add3x_maddx_udiv3x_crc32cx:
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
.Lloop27:
        mul x10, x2, x6
        add x9, x3, x2
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop27
        ret
        .size        kernel_int2_mul3x_add3x_maddx_udiv3x_crc32cx, .-kernel_int2_mul3x_add3x_maddx_udiv3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_add3x_maddx_crc32cx_udiv3x
        .type        kernel_int2_mul3x_add3x_maddx_crc32cx_udiv3x, %function
kernel_int2_mul3x_add3x_maddx_crc32cx_udiv3x:
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
.Lloop28:
        mul x10, x2, x6
        add x9, x3, x2
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop28
        ret
        .size        kernel_int2_mul3x_add3x_maddx_crc32cx_udiv3x, .-kernel_int2_mul3x_add3x_maddx_crc32cx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_add3x_crc32cx_udiv3x_maddx
        .type        kernel_int2_mul3x_add3x_crc32cx_udiv3x_maddx, %function
kernel_int2_mul3x_add3x_crc32cx_udiv3x_maddx:
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
.Lloop29:
        mul x10, x2, x6
        add x9, x3, x2
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop29
        ret
        .size        kernel_int2_mul3x_add3x_crc32cx_udiv3x_maddx, .-kernel_int2_mul3x_add3x_crc32cx_udiv3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_add3x_crc32cx_maddx_udiv3x
        .type        kernel_int2_mul3x_add3x_crc32cx_maddx_udiv3x, %function
kernel_int2_mul3x_add3x_crc32cx_maddx_udiv3x:
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
.Lloop30:
        mul x10, x2, x6
        add x9, x3, x2
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop30
        ret
        .size        kernel_int2_mul3x_add3x_crc32cx_maddx_udiv3x, .-kernel_int2_mul3x_add3x_crc32cx_maddx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_udiv3x_add3x_maddx_crc32cx
        .type        kernel_int2_mul3x_udiv3x_add3x_maddx_crc32cx, %function
kernel_int2_mul3x_udiv3x_add3x_maddx_crc32cx:
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
.Lloop31:
        mul x10, x2, x6
        udiv x11, x2, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop31
        ret
        .size        kernel_int2_mul3x_udiv3x_add3x_maddx_crc32cx, .-kernel_int2_mul3x_udiv3x_add3x_maddx_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_udiv3x_add3x_crc32cx_maddx
        .type        kernel_int2_mul3x_udiv3x_add3x_crc32cx_maddx, %function
kernel_int2_mul3x_udiv3x_add3x_crc32cx_maddx:
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
.Lloop32:
        mul x10, x2, x6
        udiv x11, x2, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop32
        ret
        .size        kernel_int2_mul3x_udiv3x_add3x_crc32cx_maddx, .-kernel_int2_mul3x_udiv3x_add3x_crc32cx_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_udiv3x_maddx_add3x_crc32cx
        .type        kernel_int2_mul3x_udiv3x_maddx_add3x_crc32cx, %function
kernel_int2_mul3x_udiv3x_maddx_add3x_crc32cx:
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
.Lloop33:
        mul x10, x2, x6
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop33
        ret
        .size        kernel_int2_mul3x_udiv3x_maddx_add3x_crc32cx, .-kernel_int2_mul3x_udiv3x_maddx_add3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_udiv3x_maddx_crc32cx_add3x
        .type        kernel_int2_mul3x_udiv3x_maddx_crc32cx_add3x, %function
kernel_int2_mul3x_udiv3x_maddx_crc32cx_add3x:
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
.Lloop34:
        mul x10, x2, x6
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop34
        ret
        .size        kernel_int2_mul3x_udiv3x_maddx_crc32cx_add3x, .-kernel_int2_mul3x_udiv3x_maddx_crc32cx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_udiv3x_crc32cx_add3x_maddx
        .type        kernel_int2_mul3x_udiv3x_crc32cx_add3x_maddx, %function
kernel_int2_mul3x_udiv3x_crc32cx_add3x_maddx:
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
.Lloop35:
        mul x10, x2, x6
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop35
        ret
        .size        kernel_int2_mul3x_udiv3x_crc32cx_add3x_maddx, .-kernel_int2_mul3x_udiv3x_crc32cx_add3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_udiv3x_crc32cx_maddx_add3x
        .type        kernel_int2_mul3x_udiv3x_crc32cx_maddx_add3x, %function
kernel_int2_mul3x_udiv3x_crc32cx_maddx_add3x:
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
.Lloop36:
        mul x10, x2, x6
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop36
        ret
        .size        kernel_int2_mul3x_udiv3x_crc32cx_maddx_add3x, .-kernel_int2_mul3x_udiv3x_crc32cx_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_maddx_add3x_udiv3x_crc32cx
        .type        kernel_int2_mul3x_maddx_add3x_udiv3x_crc32cx, %function
kernel_int2_mul3x_maddx_add3x_udiv3x_crc32cx:
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
.Lloop37:
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add x9, x3, x2
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop37
        ret
        .size        kernel_int2_mul3x_maddx_add3x_udiv3x_crc32cx, .-kernel_int2_mul3x_maddx_add3x_udiv3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_maddx_add3x_crc32cx_udiv3x
        .type        kernel_int2_mul3x_maddx_add3x_crc32cx_udiv3x, %function
kernel_int2_mul3x_maddx_add3x_crc32cx_udiv3x:
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
.Lloop38:
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop38
        ret
        .size        kernel_int2_mul3x_maddx_add3x_crc32cx_udiv3x, .-kernel_int2_mul3x_maddx_add3x_crc32cx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_maddx_udiv3x_add3x_crc32cx
        .type        kernel_int2_mul3x_maddx_udiv3x_add3x_crc32cx, %function
kernel_int2_mul3x_maddx_udiv3x_add3x_crc32cx:
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
.Lloop39:
        mul x10, x2, x6
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop39
        ret
        .size        kernel_int2_mul3x_maddx_udiv3x_add3x_crc32cx, .-kernel_int2_mul3x_maddx_udiv3x_add3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_maddx_udiv3x_crc32cx_add3x
        .type        kernel_int2_mul3x_maddx_udiv3x_crc32cx_add3x, %function
kernel_int2_mul3x_maddx_udiv3x_crc32cx_add3x:
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
.Lloop40:
        mul x10, x2, x6
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop40
        ret
        .size        kernel_int2_mul3x_maddx_udiv3x_crc32cx_add3x, .-kernel_int2_mul3x_maddx_udiv3x_crc32cx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_maddx_crc32cx_add3x_udiv3x
        .type        kernel_int2_mul3x_maddx_crc32cx_add3x_udiv3x, %function
kernel_int2_mul3x_maddx_crc32cx_add3x_udiv3x:
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
.Lloop41:
        mul x10, x2, x6
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop41
        ret
        .size        kernel_int2_mul3x_maddx_crc32cx_add3x_udiv3x, .-kernel_int2_mul3x_maddx_crc32cx_add3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_maddx_crc32cx_udiv3x_add3x
        .type        kernel_int2_mul3x_maddx_crc32cx_udiv3x_add3x, %function
kernel_int2_mul3x_maddx_crc32cx_udiv3x_add3x:
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
.Lloop42:
        mul x10, x2, x6
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop42
        ret
        .size        kernel_int2_mul3x_maddx_crc32cx_udiv3x_add3x, .-kernel_int2_mul3x_maddx_crc32cx_udiv3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_crc32cx_add3x_udiv3x_maddx
        .type        kernel_int2_mul3x_crc32cx_add3x_udiv3x_maddx, %function
kernel_int2_mul3x_crc32cx_add3x_udiv3x_maddx:
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
.Lloop43:
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add x9, x3, x2
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop43
        ret
        .size        kernel_int2_mul3x_crc32cx_add3x_udiv3x_maddx, .-kernel_int2_mul3x_crc32cx_add3x_udiv3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_crc32cx_add3x_maddx_udiv3x
        .type        kernel_int2_mul3x_crc32cx_add3x_maddx_udiv3x, %function
kernel_int2_mul3x_crc32cx_add3x_maddx_udiv3x:
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
.Lloop44:
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop44
        ret
        .size        kernel_int2_mul3x_crc32cx_add3x_maddx_udiv3x, .-kernel_int2_mul3x_crc32cx_add3x_maddx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_crc32cx_udiv3x_add3x_maddx
        .type        kernel_int2_mul3x_crc32cx_udiv3x_add3x_maddx, %function
kernel_int2_mul3x_crc32cx_udiv3x_add3x_maddx:
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
.Lloop45:
        mul x10, x2, x6
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop45
        ret
        .size        kernel_int2_mul3x_crc32cx_udiv3x_add3x_maddx, .-kernel_int2_mul3x_crc32cx_udiv3x_add3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_crc32cx_udiv3x_maddx_add3x
        .type        kernel_int2_mul3x_crc32cx_udiv3x_maddx_add3x, %function
kernel_int2_mul3x_crc32cx_udiv3x_maddx_add3x:
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
.Lloop46:
        mul x10, x2, x6
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop46
        ret
        .size        kernel_int2_mul3x_crc32cx_udiv3x_maddx_add3x, .-kernel_int2_mul3x_crc32cx_udiv3x_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_crc32cx_maddx_add3x_udiv3x
        .type        kernel_int2_mul3x_crc32cx_maddx_add3x_udiv3x, %function
kernel_int2_mul3x_crc32cx_maddx_add3x_udiv3x:
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
.Lloop47:
        mul x10, x2, x6
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop47
        ret
        .size        kernel_int2_mul3x_crc32cx_maddx_add3x_udiv3x, .-kernel_int2_mul3x_crc32cx_maddx_add3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_mul3x_crc32cx_maddx_udiv3x_add3x
        .type        kernel_int2_mul3x_crc32cx_maddx_udiv3x_add3x, %function
kernel_int2_mul3x_crc32cx_maddx_udiv3x_add3x:
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
.Lloop48:
        mul x10, x2, x6
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop48
        ret
        .size        kernel_int2_mul3x_crc32cx_maddx_udiv3x_add3x, .-kernel_int2_mul3x_crc32cx_maddx_udiv3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_add3x_mul3x_maddx_crc32cx
        .type        kernel_int2_udiv3x_add3x_mul3x_maddx_crc32cx, %function
kernel_int2_udiv3x_add3x_mul3x_maddx_crc32cx:
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
.Lloop49:
        udiv x11, x2, x3
        add x9, x3, x2
        mul x10, x2, x6
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop49
        ret
        .size        kernel_int2_udiv3x_add3x_mul3x_maddx_crc32cx, .-kernel_int2_udiv3x_add3x_mul3x_maddx_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_add3x_mul3x_crc32cx_maddx
        .type        kernel_int2_udiv3x_add3x_mul3x_crc32cx_maddx, %function
kernel_int2_udiv3x_add3x_mul3x_crc32cx_maddx:
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
.Lloop50:
        udiv x11, x2, x3
        add x9, x3, x2
        mul x10, x2, x6
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop50
        ret
        .size        kernel_int2_udiv3x_add3x_mul3x_crc32cx_maddx, .-kernel_int2_udiv3x_add3x_mul3x_crc32cx_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_add3x_maddx_mul3x_crc32cx
        .type        kernel_int2_udiv3x_add3x_maddx_mul3x_crc32cx, %function
kernel_int2_udiv3x_add3x_maddx_mul3x_crc32cx:
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
.Lloop51:
        udiv x11, x2, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop51
        ret
        .size        kernel_int2_udiv3x_add3x_maddx_mul3x_crc32cx, .-kernel_int2_udiv3x_add3x_maddx_mul3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_add3x_maddx_crc32cx_mul3x
        .type        kernel_int2_udiv3x_add3x_maddx_crc32cx_mul3x, %function
kernel_int2_udiv3x_add3x_maddx_crc32cx_mul3x:
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
.Lloop52:
        udiv x11, x2, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop52
        ret
        .size        kernel_int2_udiv3x_add3x_maddx_crc32cx_mul3x, .-kernel_int2_udiv3x_add3x_maddx_crc32cx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_add3x_crc32cx_mul3x_maddx
        .type        kernel_int2_udiv3x_add3x_crc32cx_mul3x_maddx, %function
kernel_int2_udiv3x_add3x_crc32cx_mul3x_maddx:
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
.Lloop53:
        udiv x11, x2, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop53
        ret
        .size        kernel_int2_udiv3x_add3x_crc32cx_mul3x_maddx, .-kernel_int2_udiv3x_add3x_crc32cx_mul3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_add3x_crc32cx_maddx_mul3x
        .type        kernel_int2_udiv3x_add3x_crc32cx_maddx_mul3x, %function
kernel_int2_udiv3x_add3x_crc32cx_maddx_mul3x:
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
.Lloop54:
        udiv x11, x2, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop54
        ret
        .size        kernel_int2_udiv3x_add3x_crc32cx_maddx_mul3x, .-kernel_int2_udiv3x_add3x_crc32cx_maddx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_mul3x_add3x_maddx_crc32cx
        .type        kernel_int2_udiv3x_mul3x_add3x_maddx_crc32cx, %function
kernel_int2_udiv3x_mul3x_add3x_maddx_crc32cx:
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
.Lloop55:
        udiv x11, x2, x3
        mul x10, x2, x6
        add x9, x3, x2
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop55
        ret
        .size        kernel_int2_udiv3x_mul3x_add3x_maddx_crc32cx, .-kernel_int2_udiv3x_mul3x_add3x_maddx_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_mul3x_add3x_crc32cx_maddx
        .type        kernel_int2_udiv3x_mul3x_add3x_crc32cx_maddx, %function
kernel_int2_udiv3x_mul3x_add3x_crc32cx_maddx:
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
.Lloop56:
        udiv x11, x2, x3
        mul x10, x2, x6
        add x9, x3, x2
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop56
        ret
        .size        kernel_int2_udiv3x_mul3x_add3x_crc32cx_maddx, .-kernel_int2_udiv3x_mul3x_add3x_crc32cx_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_mul3x_maddx_add3x_crc32cx
        .type        kernel_int2_udiv3x_mul3x_maddx_add3x_crc32cx, %function
kernel_int2_udiv3x_mul3x_maddx_add3x_crc32cx:
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
.Lloop57:
        udiv x11, x2, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop57
        ret
        .size        kernel_int2_udiv3x_mul3x_maddx_add3x_crc32cx, .-kernel_int2_udiv3x_mul3x_maddx_add3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_mul3x_maddx_crc32cx_add3x
        .type        kernel_int2_udiv3x_mul3x_maddx_crc32cx_add3x, %function
kernel_int2_udiv3x_mul3x_maddx_crc32cx_add3x:
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
.Lloop58:
        udiv x11, x2, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop58
        ret
        .size        kernel_int2_udiv3x_mul3x_maddx_crc32cx_add3x, .-kernel_int2_udiv3x_mul3x_maddx_crc32cx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_mul3x_crc32cx_add3x_maddx
        .type        kernel_int2_udiv3x_mul3x_crc32cx_add3x_maddx, %function
kernel_int2_udiv3x_mul3x_crc32cx_add3x_maddx:
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
.Lloop59:
        udiv x11, x2, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop59
        ret
        .size        kernel_int2_udiv3x_mul3x_crc32cx_add3x_maddx, .-kernel_int2_udiv3x_mul3x_crc32cx_add3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_mul3x_crc32cx_maddx_add3x
        .type        kernel_int2_udiv3x_mul3x_crc32cx_maddx_add3x, %function
kernel_int2_udiv3x_mul3x_crc32cx_maddx_add3x:
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
.Lloop60:
        udiv x11, x2, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop60
        ret
        .size        kernel_int2_udiv3x_mul3x_crc32cx_maddx_add3x, .-kernel_int2_udiv3x_mul3x_crc32cx_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_maddx_add3x_mul3x_crc32cx
        .type        kernel_int2_udiv3x_maddx_add3x_mul3x_crc32cx, %function
kernel_int2_udiv3x_maddx_add3x_mul3x_crc32cx:
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
.Lloop61:
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop61
        ret
        .size        kernel_int2_udiv3x_maddx_add3x_mul3x_crc32cx, .-kernel_int2_udiv3x_maddx_add3x_mul3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_maddx_add3x_crc32cx_mul3x
        .type        kernel_int2_udiv3x_maddx_add3x_crc32cx_mul3x, %function
kernel_int2_udiv3x_maddx_add3x_crc32cx_mul3x:
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
.Lloop62:
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop62
        ret
        .size        kernel_int2_udiv3x_maddx_add3x_crc32cx_mul3x, .-kernel_int2_udiv3x_maddx_add3x_crc32cx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_maddx_mul3x_add3x_crc32cx
        .type        kernel_int2_udiv3x_maddx_mul3x_add3x_crc32cx, %function
kernel_int2_udiv3x_maddx_mul3x_add3x_crc32cx:
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
.Lloop63:
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add x9, x3, x2
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop63
        ret
        .size        kernel_int2_udiv3x_maddx_mul3x_add3x_crc32cx, .-kernel_int2_udiv3x_maddx_mul3x_add3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_maddx_mul3x_crc32cx_add3x
        .type        kernel_int2_udiv3x_maddx_mul3x_crc32cx_add3x, %function
kernel_int2_udiv3x_maddx_mul3x_crc32cx_add3x:
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
.Lloop64:
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop64
        ret
        .size        kernel_int2_udiv3x_maddx_mul3x_crc32cx_add3x, .-kernel_int2_udiv3x_maddx_mul3x_crc32cx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_maddx_crc32cx_add3x_mul3x
        .type        kernel_int2_udiv3x_maddx_crc32cx_add3x_mul3x, %function
kernel_int2_udiv3x_maddx_crc32cx_add3x_mul3x:
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
.Lloop65:
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop65
        ret
        .size        kernel_int2_udiv3x_maddx_crc32cx_add3x_mul3x, .-kernel_int2_udiv3x_maddx_crc32cx_add3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_maddx_crc32cx_mul3x_add3x
        .type        kernel_int2_udiv3x_maddx_crc32cx_mul3x_add3x, %function
kernel_int2_udiv3x_maddx_crc32cx_mul3x_add3x:
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
.Lloop66:
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop66
        ret
        .size        kernel_int2_udiv3x_maddx_crc32cx_mul3x_add3x, .-kernel_int2_udiv3x_maddx_crc32cx_mul3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_crc32cx_add3x_mul3x_maddx
        .type        kernel_int2_udiv3x_crc32cx_add3x_mul3x_maddx, %function
kernel_int2_udiv3x_crc32cx_add3x_mul3x_maddx:
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
.Lloop67:
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop67
        ret
        .size        kernel_int2_udiv3x_crc32cx_add3x_mul3x_maddx, .-kernel_int2_udiv3x_crc32cx_add3x_mul3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_crc32cx_add3x_maddx_mul3x
        .type        kernel_int2_udiv3x_crc32cx_add3x_maddx_mul3x, %function
kernel_int2_udiv3x_crc32cx_add3x_maddx_mul3x:
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
.Lloop68:
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop68
        ret
        .size        kernel_int2_udiv3x_crc32cx_add3x_maddx_mul3x, .-kernel_int2_udiv3x_crc32cx_add3x_maddx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_crc32cx_mul3x_add3x_maddx
        .type        kernel_int2_udiv3x_crc32cx_mul3x_add3x_maddx, %function
kernel_int2_udiv3x_crc32cx_mul3x_add3x_maddx:
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
.Lloop69:
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add x9, x3, x2
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop69
        ret
        .size        kernel_int2_udiv3x_crc32cx_mul3x_add3x_maddx, .-kernel_int2_udiv3x_crc32cx_mul3x_add3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_crc32cx_mul3x_maddx_add3x
        .type        kernel_int2_udiv3x_crc32cx_mul3x_maddx_add3x, %function
kernel_int2_udiv3x_crc32cx_mul3x_maddx_add3x:
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
.Lloop70:
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop70
        ret
        .size        kernel_int2_udiv3x_crc32cx_mul3x_maddx_add3x, .-kernel_int2_udiv3x_crc32cx_mul3x_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_crc32cx_maddx_add3x_mul3x
        .type        kernel_int2_udiv3x_crc32cx_maddx_add3x_mul3x, %function
kernel_int2_udiv3x_crc32cx_maddx_add3x_mul3x:
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
.Lloop71:
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop71
        ret
        .size        kernel_int2_udiv3x_crc32cx_maddx_add3x_mul3x, .-kernel_int2_udiv3x_crc32cx_maddx_add3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_udiv3x_crc32cx_maddx_mul3x_add3x
        .type        kernel_int2_udiv3x_crc32cx_maddx_mul3x_add3x, %function
kernel_int2_udiv3x_crc32cx_maddx_mul3x_add3x:
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
.Lloop72:
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop72
        ret
        .size        kernel_int2_udiv3x_crc32cx_maddx_mul3x_add3x, .-kernel_int2_udiv3x_crc32cx_maddx_mul3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_add3x_mul3x_udiv3x_crc32cx
        .type        kernel_int2_maddx_add3x_mul3x_udiv3x_crc32cx, %function
kernel_int2_maddx_add3x_mul3x_udiv3x_crc32cx:
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
.Lloop73:
        madd x12, x2, x3, x3
        add x9, x3, x2
        mul x10, x2, x6
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop73
        ret
        .size        kernel_int2_maddx_add3x_mul3x_udiv3x_crc32cx, .-kernel_int2_maddx_add3x_mul3x_udiv3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_add3x_mul3x_crc32cx_udiv3x
        .type        kernel_int2_maddx_add3x_mul3x_crc32cx_udiv3x, %function
kernel_int2_maddx_add3x_mul3x_crc32cx_udiv3x:
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
.Lloop74:
        madd x12, x2, x3, x3
        add x9, x3, x2
        mul x10, x2, x6
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop74
        ret
        .size        kernel_int2_maddx_add3x_mul3x_crc32cx_udiv3x, .-kernel_int2_maddx_add3x_mul3x_crc32cx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_add3x_udiv3x_mul3x_crc32cx
        .type        kernel_int2_maddx_add3x_udiv3x_mul3x_crc32cx, %function
kernel_int2_maddx_add3x_udiv3x_mul3x_crc32cx:
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
.Lloop75:
        madd x12, x2, x3, x3
        add x9, x3, x2
        udiv x11, x2, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop75
        ret
        .size        kernel_int2_maddx_add3x_udiv3x_mul3x_crc32cx, .-kernel_int2_maddx_add3x_udiv3x_mul3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_add3x_udiv3x_crc32cx_mul3x
        .type        kernel_int2_maddx_add3x_udiv3x_crc32cx_mul3x, %function
kernel_int2_maddx_add3x_udiv3x_crc32cx_mul3x:
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
.Lloop76:
        madd x12, x2, x3, x3
        add x9, x3, x2
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop76
        ret
        .size        kernel_int2_maddx_add3x_udiv3x_crc32cx_mul3x, .-kernel_int2_maddx_add3x_udiv3x_crc32cx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_add3x_crc32cx_mul3x_udiv3x
        .type        kernel_int2_maddx_add3x_crc32cx_mul3x_udiv3x, %function
kernel_int2_maddx_add3x_crc32cx_mul3x_udiv3x:
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
.Lloop77:
        madd x12, x2, x3, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop77
        ret
        .size        kernel_int2_maddx_add3x_crc32cx_mul3x_udiv3x, .-kernel_int2_maddx_add3x_crc32cx_mul3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_add3x_crc32cx_udiv3x_mul3x
        .type        kernel_int2_maddx_add3x_crc32cx_udiv3x_mul3x, %function
kernel_int2_maddx_add3x_crc32cx_udiv3x_mul3x:
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
.Lloop78:
        madd x12, x2, x3, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop78
        ret
        .size        kernel_int2_maddx_add3x_crc32cx_udiv3x_mul3x, .-kernel_int2_maddx_add3x_crc32cx_udiv3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_mul3x_add3x_udiv3x_crc32cx
        .type        kernel_int2_maddx_mul3x_add3x_udiv3x_crc32cx, %function
kernel_int2_maddx_mul3x_add3x_udiv3x_crc32cx:
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
.Lloop79:
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add x9, x3, x2
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop79
        ret
        .size        kernel_int2_maddx_mul3x_add3x_udiv3x_crc32cx, .-kernel_int2_maddx_mul3x_add3x_udiv3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_mul3x_add3x_crc32cx_udiv3x
        .type        kernel_int2_maddx_mul3x_add3x_crc32cx_udiv3x, %function
kernel_int2_maddx_mul3x_add3x_crc32cx_udiv3x:
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
.Lloop80:
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add x9, x3, x2
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop80
        ret
        .size        kernel_int2_maddx_mul3x_add3x_crc32cx_udiv3x, .-kernel_int2_maddx_mul3x_add3x_crc32cx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_mul3x_udiv3x_add3x_crc32cx
        .type        kernel_int2_maddx_mul3x_udiv3x_add3x_crc32cx, %function
kernel_int2_maddx_mul3x_udiv3x_add3x_crc32cx:
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
.Lloop81:
        madd x12, x2, x3, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop81
        ret
        .size        kernel_int2_maddx_mul3x_udiv3x_add3x_crc32cx, .-kernel_int2_maddx_mul3x_udiv3x_add3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_mul3x_udiv3x_crc32cx_add3x
        .type        kernel_int2_maddx_mul3x_udiv3x_crc32cx_add3x, %function
kernel_int2_maddx_mul3x_udiv3x_crc32cx_add3x:
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
.Lloop82:
        madd x12, x2, x3, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop82
        ret
        .size        kernel_int2_maddx_mul3x_udiv3x_crc32cx_add3x, .-kernel_int2_maddx_mul3x_udiv3x_crc32cx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_mul3x_crc32cx_add3x_udiv3x
        .type        kernel_int2_maddx_mul3x_crc32cx_add3x_udiv3x, %function
kernel_int2_maddx_mul3x_crc32cx_add3x_udiv3x:
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
.Lloop83:
        madd x12, x2, x3, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add x9, x3, x2
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop83
        ret
        .size        kernel_int2_maddx_mul3x_crc32cx_add3x_udiv3x, .-kernel_int2_maddx_mul3x_crc32cx_add3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_mul3x_crc32cx_udiv3x_add3x
        .type        kernel_int2_maddx_mul3x_crc32cx_udiv3x_add3x, %function
kernel_int2_maddx_mul3x_crc32cx_udiv3x_add3x:
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
.Lloop84:
        madd x12, x2, x3, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop84
        ret
        .size        kernel_int2_maddx_mul3x_crc32cx_udiv3x_add3x, .-kernel_int2_maddx_mul3x_crc32cx_udiv3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_udiv3x_add3x_mul3x_crc32cx
        .type        kernel_int2_maddx_udiv3x_add3x_mul3x_crc32cx, %function
kernel_int2_maddx_udiv3x_add3x_mul3x_crc32cx:
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
.Lloop85:
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add x9, x3, x2
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop85
        ret
        .size        kernel_int2_maddx_udiv3x_add3x_mul3x_crc32cx, .-kernel_int2_maddx_udiv3x_add3x_mul3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_udiv3x_add3x_crc32cx_mul3x
        .type        kernel_int2_maddx_udiv3x_add3x_crc32cx_mul3x, %function
kernel_int2_maddx_udiv3x_add3x_crc32cx_mul3x:
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
.Lloop86:
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add x9, x3, x2
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop86
        ret
        .size        kernel_int2_maddx_udiv3x_add3x_crc32cx_mul3x, .-kernel_int2_maddx_udiv3x_add3x_crc32cx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_udiv3x_mul3x_add3x_crc32cx
        .type        kernel_int2_maddx_udiv3x_mul3x_add3x_crc32cx, %function
kernel_int2_maddx_udiv3x_mul3x_add3x_crc32cx:
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
.Lloop87:
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add x9, x3, x2
        crc32cx w13, w4, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop87
        ret
        .size        kernel_int2_maddx_udiv3x_mul3x_add3x_crc32cx, .-kernel_int2_maddx_udiv3x_mul3x_add3x_crc32cx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_udiv3x_mul3x_crc32cx_add3x
        .type        kernel_int2_maddx_udiv3x_mul3x_crc32cx_add3x, %function
kernel_int2_maddx_udiv3x_mul3x_crc32cx_add3x:
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
.Lloop88:
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        crc32cx w13, w4, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop88
        ret
        .size        kernel_int2_maddx_udiv3x_mul3x_crc32cx_add3x, .-kernel_int2_maddx_udiv3x_mul3x_crc32cx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_udiv3x_crc32cx_add3x_mul3x
        .type        kernel_int2_maddx_udiv3x_crc32cx_add3x_mul3x, %function
kernel_int2_maddx_udiv3x_crc32cx_add3x_mul3x:
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
.Lloop89:
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop89
        ret
        .size        kernel_int2_maddx_udiv3x_crc32cx_add3x_mul3x, .-kernel_int2_maddx_udiv3x_crc32cx_add3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_udiv3x_crc32cx_mul3x_add3x
        .type        kernel_int2_maddx_udiv3x_crc32cx_mul3x_add3x, %function
kernel_int2_maddx_udiv3x_crc32cx_mul3x_add3x:
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
.Lloop90:
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop90
        ret
        .size        kernel_int2_maddx_udiv3x_crc32cx_mul3x_add3x, .-kernel_int2_maddx_udiv3x_crc32cx_mul3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_crc32cx_add3x_mul3x_udiv3x
        .type        kernel_int2_maddx_crc32cx_add3x_mul3x_udiv3x, %function
kernel_int2_maddx_crc32cx_add3x_mul3x_udiv3x:
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
.Lloop91:
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        mul x10, x2, x6
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop91
        ret
        .size        kernel_int2_maddx_crc32cx_add3x_mul3x_udiv3x, .-kernel_int2_maddx_crc32cx_add3x_mul3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_crc32cx_add3x_udiv3x_mul3x
        .type        kernel_int2_maddx_crc32cx_add3x_udiv3x_mul3x, %function
kernel_int2_maddx_crc32cx_add3x_udiv3x_mul3x:
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
.Lloop92:
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        add x9, x3, x2
        udiv x11, x2, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop92
        ret
        .size        kernel_int2_maddx_crc32cx_add3x_udiv3x_mul3x, .-kernel_int2_maddx_crc32cx_add3x_udiv3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_crc32cx_mul3x_add3x_udiv3x
        .type        kernel_int2_maddx_crc32cx_mul3x_add3x_udiv3x, %function
kernel_int2_maddx_crc32cx_mul3x_add3x_udiv3x:
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
.Lloop93:
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add x9, x3, x2
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop93
        ret
        .size        kernel_int2_maddx_crc32cx_mul3x_add3x_udiv3x, .-kernel_int2_maddx_crc32cx_mul3x_add3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_crc32cx_mul3x_udiv3x_add3x
        .type        kernel_int2_maddx_crc32cx_mul3x_udiv3x_add3x, %function
kernel_int2_maddx_crc32cx_mul3x_udiv3x_add3x:
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
.Lloop94:
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop94
        ret
        .size        kernel_int2_maddx_crc32cx_mul3x_udiv3x_add3x, .-kernel_int2_maddx_crc32cx_mul3x_udiv3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_crc32cx_udiv3x_add3x_mul3x
        .type        kernel_int2_maddx_crc32cx_udiv3x_add3x_mul3x, %function
kernel_int2_maddx_crc32cx_udiv3x_add3x_mul3x:
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
.Lloop95:
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add x9, x3, x2
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop95
        ret
        .size        kernel_int2_maddx_crc32cx_udiv3x_add3x_mul3x, .-kernel_int2_maddx_crc32cx_udiv3x_add3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_maddx_crc32cx_udiv3x_mul3x_add3x
        .type        kernel_int2_maddx_crc32cx_udiv3x_mul3x_add3x, %function
kernel_int2_maddx_crc32cx_udiv3x_mul3x_add3x:
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
.Lloop96:
        madd x12, x2, x3, x3
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop96
        ret
        .size        kernel_int2_maddx_crc32cx_udiv3x_mul3x_add3x, .-kernel_int2_maddx_crc32cx_udiv3x_mul3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_add3x_mul3x_udiv3x_maddx
        .type        kernel_int2_crc32cx_add3x_mul3x_udiv3x_maddx, %function
kernel_int2_crc32cx_add3x_mul3x_udiv3x_maddx:
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
.Lloop97:
        crc32cx w13, w4, x3
        add x9, x3, x2
        mul x10, x2, x6
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop97
        ret
        .size        kernel_int2_crc32cx_add3x_mul3x_udiv3x_maddx, .-kernel_int2_crc32cx_add3x_mul3x_udiv3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_add3x_mul3x_maddx_udiv3x
        .type        kernel_int2_crc32cx_add3x_mul3x_maddx_udiv3x, %function
kernel_int2_crc32cx_add3x_mul3x_maddx_udiv3x:
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
.Lloop98:
        crc32cx w13, w4, x3
        add x9, x3, x2
        mul x10, x2, x6
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop98
        ret
        .size        kernel_int2_crc32cx_add3x_mul3x_maddx_udiv3x, .-kernel_int2_crc32cx_add3x_mul3x_maddx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_add3x_udiv3x_mul3x_maddx
        .type        kernel_int2_crc32cx_add3x_udiv3x_mul3x_maddx, %function
kernel_int2_crc32cx_add3x_udiv3x_mul3x_maddx:
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
.Lloop99:
        crc32cx w13, w4, x3
        add x9, x3, x2
        udiv x11, x2, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop99
        ret
        .size        kernel_int2_crc32cx_add3x_udiv3x_mul3x_maddx, .-kernel_int2_crc32cx_add3x_udiv3x_mul3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_add3x_udiv3x_maddx_mul3x
        .type        kernel_int2_crc32cx_add3x_udiv3x_maddx_mul3x, %function
kernel_int2_crc32cx_add3x_udiv3x_maddx_mul3x:
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
.Lloop100:
        crc32cx w13, w4, x3
        add x9, x3, x2
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop100
        ret
        .size        kernel_int2_crc32cx_add3x_udiv3x_maddx_mul3x, .-kernel_int2_crc32cx_add3x_udiv3x_maddx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_add3x_maddx_mul3x_udiv3x
        .type        kernel_int2_crc32cx_add3x_maddx_mul3x_udiv3x, %function
kernel_int2_crc32cx_add3x_maddx_mul3x_udiv3x:
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
.Lloop101:
        crc32cx w13, w4, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop101
        ret
        .size        kernel_int2_crc32cx_add3x_maddx_mul3x_udiv3x, .-kernel_int2_crc32cx_add3x_maddx_mul3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_add3x_maddx_udiv3x_mul3x
        .type        kernel_int2_crc32cx_add3x_maddx_udiv3x_mul3x, %function
kernel_int2_crc32cx_add3x_maddx_udiv3x_mul3x:
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
.Lloop102:
        crc32cx w13, w4, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop102
        ret
        .size        kernel_int2_crc32cx_add3x_maddx_udiv3x_mul3x, .-kernel_int2_crc32cx_add3x_maddx_udiv3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_mul3x_add3x_udiv3x_maddx
        .type        kernel_int2_crc32cx_mul3x_add3x_udiv3x_maddx, %function
kernel_int2_crc32cx_mul3x_add3x_udiv3x_maddx:
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
.Lloop103:
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add x9, x3, x2
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop103
        ret
        .size        kernel_int2_crc32cx_mul3x_add3x_udiv3x_maddx, .-kernel_int2_crc32cx_mul3x_add3x_udiv3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_mul3x_add3x_maddx_udiv3x
        .type        kernel_int2_crc32cx_mul3x_add3x_maddx_udiv3x, %function
kernel_int2_crc32cx_mul3x_add3x_maddx_udiv3x:
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
.Lloop104:
        crc32cx w13, w4, x3
        mul x10, x2, x6
        add x9, x3, x2
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop104
        ret
        .size        kernel_int2_crc32cx_mul3x_add3x_maddx_udiv3x, .-kernel_int2_crc32cx_mul3x_add3x_maddx_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_mul3x_udiv3x_add3x_maddx
        .type        kernel_int2_crc32cx_mul3x_udiv3x_add3x_maddx, %function
kernel_int2_crc32cx_mul3x_udiv3x_add3x_maddx:
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
.Lloop105:
        crc32cx w13, w4, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop105
        ret
        .size        kernel_int2_crc32cx_mul3x_udiv3x_add3x_maddx, .-kernel_int2_crc32cx_mul3x_udiv3x_add3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_mul3x_udiv3x_maddx_add3x
        .type        kernel_int2_crc32cx_mul3x_udiv3x_maddx_add3x, %function
kernel_int2_crc32cx_mul3x_udiv3x_maddx_add3x:
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
.Lloop106:
        crc32cx w13, w4, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop106
        ret
        .size        kernel_int2_crc32cx_mul3x_udiv3x_maddx_add3x, .-kernel_int2_crc32cx_mul3x_udiv3x_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_mul3x_maddx_add3x_udiv3x
        .type        kernel_int2_crc32cx_mul3x_maddx_add3x_udiv3x, %function
kernel_int2_crc32cx_mul3x_maddx_add3x_udiv3x:
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
.Lloop107:
        crc32cx w13, w4, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add x9, x3, x2
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop107
        ret
        .size        kernel_int2_crc32cx_mul3x_maddx_add3x_udiv3x, .-kernel_int2_crc32cx_mul3x_maddx_add3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_mul3x_maddx_udiv3x_add3x
        .type        kernel_int2_crc32cx_mul3x_maddx_udiv3x_add3x, %function
kernel_int2_crc32cx_mul3x_maddx_udiv3x_add3x:
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
.Lloop108:
        crc32cx w13, w4, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop108
        ret
        .size        kernel_int2_crc32cx_mul3x_maddx_udiv3x_add3x, .-kernel_int2_crc32cx_mul3x_maddx_udiv3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_udiv3x_add3x_mul3x_maddx
        .type        kernel_int2_crc32cx_udiv3x_add3x_mul3x_maddx, %function
kernel_int2_crc32cx_udiv3x_add3x_mul3x_maddx:
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
.Lloop109:
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add x9, x3, x2
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop109
        ret
        .size        kernel_int2_crc32cx_udiv3x_add3x_mul3x_maddx, .-kernel_int2_crc32cx_udiv3x_add3x_mul3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_udiv3x_add3x_maddx_mul3x
        .type        kernel_int2_crc32cx_udiv3x_add3x_maddx_mul3x, %function
kernel_int2_crc32cx_udiv3x_add3x_maddx_mul3x:
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
.Lloop110:
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        add x9, x3, x2
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop110
        ret
        .size        kernel_int2_crc32cx_udiv3x_add3x_maddx_mul3x, .-kernel_int2_crc32cx_udiv3x_add3x_maddx_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_udiv3x_mul3x_add3x_maddx
        .type        kernel_int2_crc32cx_udiv3x_mul3x_add3x_maddx, %function
kernel_int2_crc32cx_udiv3x_mul3x_add3x_maddx:
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
.Lloop111:
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add x9, x3, x2
        madd x12, x2, x3, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop111
        ret
        .size        kernel_int2_crc32cx_udiv3x_mul3x_add3x_maddx, .-kernel_int2_crc32cx_udiv3x_mul3x_add3x_maddx

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_udiv3x_mul3x_maddx_add3x
        .type        kernel_int2_crc32cx_udiv3x_mul3x_maddx_add3x, %function
kernel_int2_crc32cx_udiv3x_mul3x_maddx_add3x:
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
.Lloop112:
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        madd x12, x2, x3, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop112
        ret
        .size        kernel_int2_crc32cx_udiv3x_mul3x_maddx_add3x, .-kernel_int2_crc32cx_udiv3x_mul3x_maddx_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_udiv3x_maddx_add3x_mul3x
        .type        kernel_int2_crc32cx_udiv3x_maddx_add3x_mul3x, %function
kernel_int2_crc32cx_udiv3x_maddx_add3x_mul3x:
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
.Lloop113:
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop113
        ret
        .size        kernel_int2_crc32cx_udiv3x_maddx_add3x_mul3x, .-kernel_int2_crc32cx_udiv3x_maddx_add3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_udiv3x_maddx_mul3x_add3x
        .type        kernel_int2_crc32cx_udiv3x_maddx_mul3x_add3x, %function
kernel_int2_crc32cx_udiv3x_maddx_mul3x_add3x:
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
.Lloop114:
        crc32cx w13, w4, x3
        udiv x11, x2, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop114
        ret
        .size        kernel_int2_crc32cx_udiv3x_maddx_mul3x_add3x, .-kernel_int2_crc32cx_udiv3x_maddx_mul3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_maddx_add3x_mul3x_udiv3x
        .type        kernel_int2_crc32cx_maddx_add3x_mul3x_udiv3x, %function
kernel_int2_crc32cx_maddx_add3x_mul3x_udiv3x:
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
.Lloop115:
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        mul x10, x2, x6
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop115
        ret
        .size        kernel_int2_crc32cx_maddx_add3x_mul3x_udiv3x, .-kernel_int2_crc32cx_maddx_add3x_mul3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_maddx_add3x_udiv3x_mul3x
        .type        kernel_int2_crc32cx_maddx_add3x_udiv3x_mul3x, %function
kernel_int2_crc32cx_maddx_add3x_udiv3x_mul3x:
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
.Lloop116:
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        add x9, x3, x2
        udiv x11, x2, x3
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop116
        ret
        .size        kernel_int2_crc32cx_maddx_add3x_udiv3x_mul3x, .-kernel_int2_crc32cx_maddx_add3x_udiv3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_maddx_mul3x_add3x_udiv3x
        .type        kernel_int2_crc32cx_maddx_mul3x_add3x_udiv3x, %function
kernel_int2_crc32cx_maddx_mul3x_add3x_udiv3x:
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
.Lloop117:
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        add x9, x3, x2
        udiv x11, x2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop117
        ret
        .size        kernel_int2_crc32cx_maddx_mul3x_add3x_udiv3x, .-kernel_int2_crc32cx_maddx_mul3x_add3x_udiv3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_maddx_mul3x_udiv3x_add3x
        .type        kernel_int2_crc32cx_maddx_mul3x_udiv3x_add3x, %function
kernel_int2_crc32cx_maddx_mul3x_udiv3x_add3x:
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
.Lloop118:
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        mul x10, x2, x6
        udiv x11, x2, x3
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop118
        ret
        .size        kernel_int2_crc32cx_maddx_mul3x_udiv3x_add3x, .-kernel_int2_crc32cx_maddx_mul3x_udiv3x_add3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_maddx_udiv3x_add3x_mul3x
        .type        kernel_int2_crc32cx_maddx_udiv3x_add3x_mul3x, %function
kernel_int2_crc32cx_maddx_udiv3x_add3x_mul3x:
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
.Lloop119:
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        add x9, x3, x2
        mul x10, x2, x6
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop119
        ret
        .size        kernel_int2_crc32cx_maddx_udiv3x_add3x_mul3x, .-kernel_int2_crc32cx_maddx_udiv3x_add3x_mul3x

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_int2_crc32cx_maddx_udiv3x_mul3x_add3x
        .type        kernel_int2_crc32cx_maddx_udiv3x_mul3x_add3x, %function
kernel_int2_crc32cx_maddx_udiv3x_mul3x_add3x:
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
.Lloop120:
        crc32cx w13, w4, x3
        madd x12, x2, x3, x3
        udiv x11, x2, x3
        mul x10, x2, x6
        add x9, x3, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop120
        ret
        .size        kernel_int2_crc32cx_maddx_udiv3x_mul3x_add3x, .-kernel_int2_crc32cx_maddx_udiv3x_mul3x_add3x
