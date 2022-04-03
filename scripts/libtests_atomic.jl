#!/usr/bin/julia

runtest_swp_w(n, ice_res, fire_res) =
    ccall((:runtest_swp_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_swp_x(n, ice_res, fire_res) =
    ccall((:runtest_swp_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_swpa_w(n, ice_res, fire_res) =
    ccall((:runtest_swpa_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_swpa_x(n, ice_res, fire_res) =
    ccall((:runtest_swpa_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_swpl_w(n, ice_res, fire_res) =
    ccall((:runtest_swpl_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_swpl_x(n, ice_res, fire_res) =
    ccall((:runtest_swpl_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_swpal_w(n, ice_res, fire_res) =
    ccall((:runtest_swpal_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_swpal_x(n, ice_res, fire_res) =
    ccall((:runtest_swpal_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_cas_w(n, ice_res, fire_res) =
    ccall((:runtest_cas_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_cas_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_cas_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casp_w(n, ice_res, fire_res) =
    ccall((:runtest_casp_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casp_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_casp_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_cas_x(n, ice_res, fire_res) =
    ccall((:runtest_cas_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_cas_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_cas_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casp_x(n, ice_res, fire_res) =
    ccall((:runtest_casp_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casp_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_casp_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casa_w(n, ice_res, fire_res) =
    ccall((:runtest_casa_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casa_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_casa_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspa_w(n, ice_res, fire_res) =
    ccall((:runtest_caspa_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspa_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_caspa_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casa_x(n, ice_res, fire_res) =
    ccall((:runtest_casa_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casa_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_casa_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspa_x(n, ice_res, fire_res) =
    ccall((:runtest_caspa_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspa_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_caspa_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casl_w(n, ice_res, fire_res) =
    ccall((:runtest_casl_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casl_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_casl_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspl_w(n, ice_res, fire_res) =
    ccall((:runtest_caspl_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspl_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_caspl_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casl_x(n, ice_res, fire_res) =
    ccall((:runtest_casl_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casl_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_casl_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspl_x(n, ice_res, fire_res) =
    ccall((:runtest_caspl_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspl_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_caspl_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casal_w(n, ice_res, fire_res) =
    ccall((:runtest_casal_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casal_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_casal_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspal_w(n, ice_res, fire_res) =
    ccall((:runtest_caspal_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspal_fail_w(n, ice_res, fire_res) =
    ccall((:runtest_caspal_fail_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casal_x(n, ice_res, fire_res) =
    ccall((:runtest_casal_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_casal_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_casal_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspal_x(n, ice_res, fire_res) =
    ccall((:runtest_caspal_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_caspal_fail_x(n, ice_res, fire_res) =
    ccall((:runtest_caspal_fail_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldadd_w(n, ice_res, fire_res) =
    ccall((:runtest_ldadd_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_stadd_w(n, ice_res, fire_res) =
    ccall((:runtest_stadd_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldadd_x(n, ice_res, fire_res) =
    ccall((:runtest_ldadd_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_stadd_x(n, ice_res, fire_res) =
    ccall((:runtest_stadd_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldadda_w(n, ice_res, fire_res) =
    ccall((:runtest_ldadda_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldadda_x(n, ice_res, fire_res) =
    ccall((:runtest_ldadda_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldaddl_w(n, ice_res, fire_res) =
    ccall((:runtest_ldaddl_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_staddl_w(n, ice_res, fire_res) =
    ccall((:runtest_staddl_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldaddl_x(n, ice_res, fire_res) =
    ccall((:runtest_ldaddl_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_staddl_x(n, ice_res, fire_res) =
    ccall((:runtest_staddl_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldaddal_w(n, ice_res, fire_res) =
    ccall((:runtest_ldaddal_w, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_ldaddal_x(n, ice_res, fire_res) =
    ccall((:runtest_ldaddal_x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

const testgrp_atomic = [

    runtest_swp_w,

    runtest_swp_x,

    runtest_swpa_w,

    runtest_swpa_x,

    runtest_swpl_w,

    runtest_swpl_x,

    runtest_swpal_w,

    runtest_swpal_x,

    runtest_cas_w,

    runtest_cas_fail_w,

    runtest_casp_w,

    runtest_casp_fail_w,

    runtest_cas_x,

    runtest_cas_fail_x,

    runtest_casp_x,

    runtest_casp_fail_x,

    runtest_casa_w,

    runtest_casa_fail_w,

    runtest_caspa_w,

    runtest_caspa_fail_w,

    runtest_casa_x,

    runtest_casa_fail_x,

    runtest_caspa_x,

    runtest_caspa_fail_x,

    runtest_casl_w,

    runtest_casl_fail_w,

    runtest_caspl_w,

    runtest_caspl_fail_w,

    runtest_casl_x,

    runtest_casl_fail_x,

    runtest_caspl_x,

    runtest_caspl_fail_x,

    runtest_casal_w,

    runtest_casal_fail_w,

    runtest_caspal_w,

    runtest_caspal_fail_w,

    runtest_casal_x,

    runtest_casal_fail_x,

    runtest_caspal_x,

    runtest_caspal_fail_x,

    runtest_ldadd_w,

    runtest_stadd_w,

    runtest_ldadd_x,

    runtest_stadd_x,

    runtest_ldadda_w,

    runtest_ldadda_x,

    runtest_ldaddl_w,

    runtest_staddl_w,

    runtest_ldaddl_x,

    runtest_staddl_x,

    runtest_ldaddal_w,

    runtest_ldaddal_x,

]

