        .arch armv8.5-a+crypto
        .bss
        .align 6
.Lgvbuffer:
        .zero        256

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_1
        .type        kernel_nop_1, %function
kernel_nop_1:
        mov w1, 0
.Lloop1:
        nop
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop1
        ret
        .size        kernel_nop_1, .-kernel_nop_1

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_addx_1
        .type        kernel_addx_1, %function
kernel_addx_1:
        mov w1, 0
        mov x2, 0
.Lloop2:
        add x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop2
        ret
        .size        kernel_addx_1, .-kernel_addx_1

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_mulx_1
        .type        kernel_mulx_1, %function
kernel_mulx_1:
        mov w1, 0
        mov x2, 0
.Lloop3:
        mul x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop3
        ret
        .size        kernel_mulx_1, .-kernel_mulx_1

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_udivx_1
        .type        kernel_udivx_1, %function
kernel_udivx_1:
        mov w1, 0
        mov x2, 2
.Lloop4:
        udiv x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop4
        ret
        .size        kernel_udivx_1, .-kernel_udivx_1

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_maddx_1
        .type        kernel_maddx_1, %function
kernel_maddx_1:
        mov w1, 0
        mov x2, 2
        mov x3, 1
        mov x4, 5
.Lloop5:
        madd x5, x2, x3, x4
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop5
        ret
        .size        kernel_maddx_1, .-kernel_maddx_1

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_crc32cx_1
        .type        kernel_crc32cx_1, %function
kernel_crc32cx_1:
        mov w1, 0
        mov x2, 2
        mov x3, 1
.Lloop6:
        crc32cx w4, w2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop6
        ret
        .size        kernel_crc32cx_1, .-kernel_crc32cx_1

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_4
        .type        kernel_nop_4, %function
kernel_nop_4:
        mov w1, 0
.Lloop7:
        nop
        nop
        nop
        nop
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop7
        ret
        .size        kernel_nop_4, .-kernel_nop_4

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_addx_4
        .type        kernel_addx_4, %function
kernel_addx_4:
        mov w1, 0
        mov x2, 0
.Lloop8:
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop8
        ret
        .size        kernel_addx_4, .-kernel_addx_4

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_mulx_4
        .type        kernel_mulx_4, %function
kernel_mulx_4:
        mov w1, 0
        mov x2, 0
.Lloop9:
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop9
        ret
        .size        kernel_mulx_4, .-kernel_mulx_4

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_udivx_4
        .type        kernel_udivx_4, %function
kernel_udivx_4:
        mov w1, 0
        mov x2, 2
.Lloop10:
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop10
        ret
        .size        kernel_udivx_4, .-kernel_udivx_4

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_maddx_4
        .type        kernel_maddx_4, %function
kernel_maddx_4:
        mov w1, 0
        mov x2, 2
        mov x3, 1
        mov x4, 5
.Lloop11:
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop11
        ret
        .size        kernel_maddx_4, .-kernel_maddx_4

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_crc32cx_4
        .type        kernel_crc32cx_4, %function
kernel_crc32cx_4:
        mov w1, 0
        mov x2, 2
        mov x3, 1
.Lloop12:
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop12
        ret
        .size        kernel_crc32cx_4, .-kernel_crc32cx_4

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_16
        .type        kernel_nop_16, %function
kernel_nop_16:
        mov w1, 0
.Lloop13:
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop13
        ret
        .size        kernel_nop_16, .-kernel_nop_16

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_addx_16
        .type        kernel_addx_16, %function
kernel_addx_16:
        mov w1, 0
        mov x2, 0
.Lloop14:
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop14
        ret
        .size        kernel_addx_16, .-kernel_addx_16

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_mulx_16
        .type        kernel_mulx_16, %function
kernel_mulx_16:
        mov w1, 0
        mov x2, 0
.Lloop15:
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop15
        ret
        .size        kernel_mulx_16, .-kernel_mulx_16

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_udivx_16
        .type        kernel_udivx_16, %function
kernel_udivx_16:
        mov w1, 0
        mov x2, 2
.Lloop16:
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop16
        ret
        .size        kernel_udivx_16, .-kernel_udivx_16

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_maddx_16
        .type        kernel_maddx_16, %function
kernel_maddx_16:
        mov w1, 0
        mov x2, 2
        mov x3, 1
        mov x4, 5
.Lloop17:
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop17
        ret
        .size        kernel_maddx_16, .-kernel_maddx_16

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_crc32cx_16
        .type        kernel_crc32cx_16, %function
kernel_crc32cx_16:
        mov w1, 0
        mov x2, 2
        mov x3, 1
.Lloop18:
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop18
        ret
        .size        kernel_crc32cx_16, .-kernel_crc32cx_16

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_64
        .type        kernel_nop_64, %function
kernel_nop_64:
        mov w1, 0
.Lloop19:
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop19
        ret
        .size        kernel_nop_64, .-kernel_nop_64

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_addx_64
        .type        kernel_addx_64, %function
kernel_addx_64:
        mov w1, 0
        mov x2, 0
.Lloop20:
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop20
        ret
        .size        kernel_addx_64, .-kernel_addx_64

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_mulx_64
        .type        kernel_mulx_64, %function
kernel_mulx_64:
        mov w1, 0
        mov x2, 0
.Lloop21:
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        mul x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop21
        ret
        .size        kernel_mulx_64, .-kernel_mulx_64

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_udivx_64
        .type        kernel_udivx_64, %function
kernel_udivx_64:
        mov w1, 0
        mov x2, 2
.Lloop22:
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        udiv x3, x2, x2
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop22
        ret
        .size        kernel_udivx_64, .-kernel_udivx_64

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_maddx_64
        .type        kernel_maddx_64, %function
kernel_maddx_64:
        mov w1, 0
        mov x2, 2
        mov x3, 1
        mov x4, 5
.Lloop23:
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        madd x5, x2, x3, x4
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop23
        ret
        .size        kernel_maddx_64, .-kernel_maddx_64

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_crc32cx_64
        .type        kernel_crc32cx_64, %function
kernel_crc32cx_64:
        mov w1, 0
        mov x2, 2
        mov x3, 1
.Lloop24:
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        crc32cx w4, w2, x3
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop24
        ret
        .size        kernel_crc32cx_64, .-kernel_crc32cx_64

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_load_regoffset
        .type        kernel_load_regoffset, %function
kernel_load_regoffset:
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 1
.Lloop25:
        add x4, x2, x3, lsl #3
        ldr x4, [x4]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop25
        ret
        .size        kernel_load_regoffset, .-kernel_load_regoffset

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_load_regoffset_addrmode
        .type        kernel_load_regoffset_addrmode, %function
kernel_load_regoffset_addrmode:
        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 1
.Lloop26:
        ldr x4, [x2, x3, lsl #3]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop26
        ret
        .size        kernel_load_regoffset_addrmode, .-kernel_load_regoffset_addrmode
