#!/usr/bin/julia

runtest_nop_precmp_1(n, ice_res, fire_res) =
    ccall((:runtest_nop_precmp_1, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_nop_precmp_4(n, ice_res, fire_res) =
    ccall((:runtest_nop_precmp_4, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_nop_precmp_16(n, ice_res, fire_res) =
    ccall((:runtest_nop_precmp_16, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_nop_precmp_64(n, ice_res, fire_res) =
    ccall((:runtest_nop_precmp_64, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

const testgrp_fuse = Dict{String,Function}(

    "nop_precmp_1"=>runtest_nop_precmp_1,

    "nop_precmp_4"=>runtest_nop_precmp_4,

    "nop_precmp_16"=>runtest_nop_precmp_16,

    "nop_precmp_64"=>runtest_nop_precmp_64,

)

