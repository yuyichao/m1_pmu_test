        .arch armv8.5-a+crypto
        .bss
        .align 6
.Lgvbuffer:
        .zero        256

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_precmp_1
        .type        kernel_nop_precmp_1, %function
kernel_nop_precmp_1:
        mov w1, 0
.Lloop1:
        add w1, w1, 1
        cmp w1, w0
        nop
        bne .Lloop1
        ret
        .size        kernel_nop_precmp_1, .-kernel_nop_precmp_1

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_precmp_4
        .type        kernel_nop_precmp_4, %function
kernel_nop_precmp_4:
        mov w1, 0
.Lloop2:
        add w1, w1, 1
        cmp w1, w0
        nop
        nop
        nop
        nop
        bne .Lloop2
        ret
        .size        kernel_nop_precmp_4, .-kernel_nop_precmp_4

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_precmp_16
        .type        kernel_nop_precmp_16, %function
kernel_nop_precmp_16:
        mov w1, 0
.Lloop3:
        add w1, w1, 1
        cmp w1, w0
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        bne .Lloop3
        ret
        .size        kernel_nop_precmp_16, .-kernel_nop_precmp_16

        .text
        .align        2
        .p2align 4,,11
        .global      kernel_nop_precmp_64
        .type        kernel_nop_precmp_64, %function
kernel_nop_precmp_64:
        mov w1, 0
.Lloop4:
        add w1, w1, 1
        cmp w1, w0
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        bne .Lloop4
        ret
        .size        kernel_nop_precmp_64, .-kernel_nop_precmp_64
