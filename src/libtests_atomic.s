        .arch armv8.5-a+crypto
        .bss
        .align 6
.Lgvbuffer:
        .zero        256

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swp_w, %function
kernel_swp_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop1:
        swp w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop1
        ret

        .size        kernel_swp_w, .-kernel_swp_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swp_x, %function
kernel_swp_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop2:
        swp x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop2
        ret

        .size        kernel_swp_x, .-kernel_swp_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swpa_w, %function
kernel_swpa_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop3:
        swpa w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop3
        ret

        .size        kernel_swpa_w, .-kernel_swpa_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swpa_x, %function
kernel_swpa_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop4:
        swpa x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop4
        ret

        .size        kernel_swpa_x, .-kernel_swpa_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swpl_w, %function
kernel_swpl_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop5:
        swpl w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop5
        ret

        .size        kernel_swpl_w, .-kernel_swpl_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swpl_x, %function
kernel_swpl_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop6:
        swpl x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop6
        ret

        .size        kernel_swpl_x, .-kernel_swpl_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swpal_w, %function
kernel_swpal_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop7:
        swpal w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop7
        ret

        .size        kernel_swpal_w, .-kernel_swpal_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_swpal_x, %function
kernel_swpal_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop8:
        swpal x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop8
        ret

        .size        kernel_swpal_x, .-kernel_swpal_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_cas_w, %function
kernel_cas_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop9:
        cas w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop9
        ret

        .size        kernel_cas_w, .-kernel_cas_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_cas_fail_w, %function
kernel_cas_fail_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop10:
        mov x4, 1
        cas w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop10
        ret

        .size        kernel_cas_fail_w, .-kernel_cas_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casp_w, %function
kernel_casp_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop11:
        casp w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop11
        ret

        .size        kernel_casp_w, .-kernel_casp_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casp_fail_w, %function
kernel_casp_fail_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop12:
        mov x4, 1
        mov x5, 1
        casp w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop12
        ret

        .size        kernel_casp_fail_w, .-kernel_casp_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_cas_x, %function
kernel_cas_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop13:
        cas x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop13
        ret

        .size        kernel_cas_x, .-kernel_cas_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_cas_fail_x, %function
kernel_cas_fail_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop14:
        mov x4, 1
        cas x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop14
        ret

        .size        kernel_cas_fail_x, .-kernel_cas_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casp_x, %function
kernel_casp_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop15:
        casp x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop15
        ret

        .size        kernel_casp_x, .-kernel_casp_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casp_fail_x, %function
kernel_casp_fail_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop16:
        mov x4, 1
        mov x5, 1
        casp x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop16
        ret

        .size        kernel_casp_fail_x, .-kernel_casp_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casa_w, %function
kernel_casa_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop17:
        casa w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop17
        ret

        .size        kernel_casa_w, .-kernel_casa_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casa_fail_w, %function
kernel_casa_fail_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop18:
        mov x4, 1
        casa w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop18
        ret

        .size        kernel_casa_fail_w, .-kernel_casa_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspa_w, %function
kernel_caspa_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop19:
        caspa w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop19
        ret

        .size        kernel_caspa_w, .-kernel_caspa_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspa_fail_w, %function
kernel_caspa_fail_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop20:
        mov x4, 1
        mov x5, 1
        caspa w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop20
        ret

        .size        kernel_caspa_fail_w, .-kernel_caspa_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casa_x, %function
kernel_casa_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop21:
        casa x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop21
        ret

        .size        kernel_casa_x, .-kernel_casa_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casa_fail_x, %function
kernel_casa_fail_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop22:
        mov x4, 1
        casa x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop22
        ret

        .size        kernel_casa_fail_x, .-kernel_casa_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspa_x, %function
kernel_caspa_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop23:
        caspa x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop23
        ret

        .size        kernel_caspa_x, .-kernel_caspa_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspa_fail_x, %function
kernel_caspa_fail_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop24:
        mov x4, 1
        mov x5, 1
        caspa x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop24
        ret

        .size        kernel_caspa_fail_x, .-kernel_caspa_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casl_w, %function
kernel_casl_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop25:
        casl w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop25
        ret

        .size        kernel_casl_w, .-kernel_casl_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casl_fail_w, %function
kernel_casl_fail_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop26:
        mov x4, 1
        casl w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop26
        ret

        .size        kernel_casl_fail_w, .-kernel_casl_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspl_w, %function
kernel_caspl_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop27:
        caspl w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop27
        ret

        .size        kernel_caspl_w, .-kernel_caspl_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspl_fail_w, %function
kernel_caspl_fail_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop28:
        mov x4, 1
        mov x5, 1
        caspl w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop28
        ret

        .size        kernel_caspl_fail_w, .-kernel_caspl_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casl_x, %function
kernel_casl_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop29:
        casl x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop29
        ret

        .size        kernel_casl_x, .-kernel_casl_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casl_fail_x, %function
kernel_casl_fail_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop30:
        mov x4, 1
        casl x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop30
        ret

        .size        kernel_casl_fail_x, .-kernel_casl_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspl_x, %function
kernel_caspl_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop31:
        caspl x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop31
        ret

        .size        kernel_caspl_x, .-kernel_caspl_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspl_fail_x, %function
kernel_caspl_fail_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop32:
        mov x4, 1
        mov x5, 1
        caspl x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop32
        ret

        .size        kernel_caspl_fail_x, .-kernel_caspl_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casal_w, %function
kernel_casal_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop33:
        casal w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop33
        ret

        .size        kernel_casal_w, .-kernel_casal_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casal_fail_w, %function
kernel_casal_fail_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop34:
        mov x4, 1
        casal w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop34
        ret

        .size        kernel_casal_fail_w, .-kernel_casal_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspal_w, %function
kernel_caspal_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop35:
        caspal w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop35
        ret

        .size        kernel_caspal_w, .-kernel_caspal_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspal_fail_w, %function
kernel_caspal_fail_w:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop36:
        mov x4, 1
        mov x5, 1
        caspal w4, w5, w2, w3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop36
        ret

        .size        kernel_caspal_fail_w, .-kernel_caspal_fail_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casal_x, %function
kernel_casal_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop37:
        casal x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop37
        ret

        .size        kernel_casal_x, .-kernel_casal_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_casal_fail_x, %function
kernel_casal_fail_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop38:
        mov x4, 1
        casal x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop38
        ret

        .size        kernel_casal_fail_x, .-kernel_casal_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspal_x, %function
kernel_caspal_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x3, 0
        mov x4, 0
        mov x5, 0
.Lloop39:
        caspal x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop39
        ret

        .size        kernel_caspal_x, .-kernel_caspal_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_caspal_fail_x, %function
kernel_caspal_fail_x:

        adrp x6, .Lgvbuffer
        add x6, x6, :lo12:.Lgvbuffer
        mov w1, 0
        mov x2, 0
        mov x2, 0
.Lloop40:
        mov x4, 1
        mov x5, 1
        caspal x4, x5, x2, x3, [x6]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop40
        ret

        .size        kernel_caspal_fail_x, .-kernel_caspal_fail_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldadd_w, %function
kernel_ldadd_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop41:
        ldadd w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop41
        ret

        .size        kernel_ldadd_w, .-kernel_ldadd_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_stadd_w, %function
kernel_stadd_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop42:
        stadd w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop42
        ret

        .size        kernel_stadd_w, .-kernel_stadd_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldadd_x, %function
kernel_ldadd_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop43:
        ldadd x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop43
        ret

        .size        kernel_ldadd_x, .-kernel_ldadd_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_stadd_x, %function
kernel_stadd_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop44:
        stadd x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop44
        ret

        .size        kernel_stadd_x, .-kernel_stadd_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldadda_w, %function
kernel_ldadda_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop45:
        ldadda w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop45
        ret

        .size        kernel_ldadda_w, .-kernel_ldadda_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldadda_x, %function
kernel_ldadda_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop46:
        ldadda x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop46
        ret

        .size        kernel_ldadda_x, .-kernel_ldadda_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldaddl_w, %function
kernel_ldaddl_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop47:
        ldaddl w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop47
        ret

        .size        kernel_ldaddl_w, .-kernel_ldaddl_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_staddl_w, %function
kernel_staddl_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop48:
        staddl w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop48
        ret

        .size        kernel_staddl_w, .-kernel_staddl_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldaddl_x, %function
kernel_ldaddl_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop49:
        ldaddl x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop49
        ret

        .size        kernel_ldaddl_x, .-kernel_ldaddl_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_staddl_x, %function
kernel_staddl_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
.Lloop50:
        staddl x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop50
        ret

        .size        kernel_staddl_x, .-kernel_staddl_x

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldaddal_w, %function
kernel_ldaddal_w:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop51:
        ldaddal w4, w3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop51
        ret

        .size        kernel_ldaddal_w, .-kernel_ldaddal_w

        .text
        .align        2
        .p2align 4,,11
        .type        kernel_ldaddal_x, %function
kernel_ldaddal_x:

        adrp x2, .Lgvbuffer
        add x2, x2, :lo12:.Lgvbuffer
        mov w1, 0
        mov x3, 0
        mov x4, 0
.Lloop52:
        ldaddal x4, x3, [x2]
        add w1, w1, 1
        cmp w1, w0
        bne .Lloop52
        ret

        .size        kernel_ldaddal_x, .-kernel_ldaddal_x

