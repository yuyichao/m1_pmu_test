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

const testgrp_atomic = Dict{String,Function}(

    "swp_w"=>runtest_swp_w,

    "swp_x"=>runtest_swp_x,

    "swpa_w"=>runtest_swpa_w,

    "swpa_x"=>runtest_swpa_x,

    "swpl_w"=>runtest_swpl_w,

    "swpl_x"=>runtest_swpl_x,

    "swpal_w"=>runtest_swpal_w,

    "swpal_x"=>runtest_swpal_x,

    "cas_w"=>runtest_cas_w,

    "cas_fail_w"=>runtest_cas_fail_w,

    "casp_w"=>runtest_casp_w,

    "casp_fail_w"=>runtest_casp_fail_w,

    "cas_x"=>runtest_cas_x,

    "cas_fail_x"=>runtest_cas_fail_x,

    "casp_x"=>runtest_casp_x,

    "casp_fail_x"=>runtest_casp_fail_x,

    "casa_w"=>runtest_casa_w,

    "casa_fail_w"=>runtest_casa_fail_w,

    "caspa_w"=>runtest_caspa_w,

    "caspa_fail_w"=>runtest_caspa_fail_w,

    "casa_x"=>runtest_casa_x,

    "casa_fail_x"=>runtest_casa_fail_x,

    "caspa_x"=>runtest_caspa_x,

    "caspa_fail_x"=>runtest_caspa_fail_x,

    "casl_w"=>runtest_casl_w,

    "casl_fail_w"=>runtest_casl_fail_w,

    "caspl_w"=>runtest_caspl_w,

    "caspl_fail_w"=>runtest_caspl_fail_w,

    "casl_x"=>runtest_casl_x,

    "casl_fail_x"=>runtest_casl_fail_x,

    "caspl_x"=>runtest_caspl_x,

    "caspl_fail_x"=>runtest_caspl_fail_x,

    "casal_w"=>runtest_casal_w,

    "casal_fail_w"=>runtest_casal_fail_w,

    "caspal_w"=>runtest_caspal_w,

    "caspal_fail_w"=>runtest_caspal_fail_w,

    "casal_x"=>runtest_casal_x,

    "casal_fail_x"=>runtest_casal_fail_x,

    "caspal_x"=>runtest_caspal_x,

    "caspal_fail_x"=>runtest_caspal_fail_x,

    "ldadd_w"=>runtest_ldadd_w,

    "stadd_w"=>runtest_stadd_w,

    "ldadd_x"=>runtest_ldadd_x,

    "stadd_x"=>runtest_stadd_x,

    "ldadda_w"=>runtest_ldadda_w,

    "ldadda_x"=>runtest_ldadda_x,

    "ldaddl_w"=>runtest_ldaddl_w,

    "staddl_w"=>runtest_staddl_w,

    "ldaddl_x"=>runtest_ldaddl_x,

    "staddl_x"=>runtest_staddl_x,

    "ldaddal_w"=>runtest_ldaddal_w,

    "ldaddal_x"=>runtest_ldaddal_x,

)

