#!/usr/bin/julia

runtest_int2_mul3x_nop(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_nop, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_ldrx_regoffset_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_ldrx_regoffset_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_ldrx(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_ldrx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_ldrx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_ldrx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_ldrx_ldrx_regoffset(n, ice_res, fire_res) =
    ccall((:runtest_int2_ldrx_ldrx_regoffset, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_ldrx_regoffset(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_ldrx_regoffset, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_nop(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_nop, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_add3x_ldrx_regoffset(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_add3x_ldrx_regoffset, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_crc32cx_nop(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_crc32cx_nop, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_nop_udiv3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_nop_udiv3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_ldrx_regoffset_ldrx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_ldrx_regoffset_ldrx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_ldrx_nop_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_ldrx_nop_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_udiv3x_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_udiv3x_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_ldrx_regoffset_nop_crc32cx_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_ldrx_regoffset_nop_crc32cx_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset(n, ice_res, fire_res) =
    ccall((:runtest_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset(n, ice_res, fire_res) =
    ccall((:runtest_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

const testgrp_int2 = Dict{String,Function}(

    "int2_mul3x_nop"=>runtest_int2_mul3x_nop,

    "int2_ldrx_regoffset_maddx"=>runtest_int2_ldrx_regoffset_maddx,

    "int2_maddx_ldrx"=>runtest_int2_maddx_ldrx,

    "int2_ldrx_mul3x"=>runtest_int2_ldrx_mul3x,

    "int2_ldrx_ldrx_regoffset"=>runtest_int2_ldrx_ldrx_regoffset,

    "int2_maddx_ldrx_regoffset"=>runtest_int2_maddx_ldrx_regoffset,

    "int2_maddx_add3x"=>runtest_int2_maddx_add3x,

    "int2_add3x_nop"=>runtest_int2_add3x_nop,

    "int2_mul3x_add3x_ldrx_regoffset"=>runtest_int2_mul3x_add3x_ldrx_regoffset,

    "int2_udiv3x_crc32cx_nop"=>runtest_int2_udiv3x_crc32cx_nop,

    "int2_nop_udiv3x_maddx"=>runtest_int2_nop_udiv3x_maddx,

    "int2_add3x_ldrx_regoffset_ldrx"=>runtest_int2_add3x_ldrx_regoffset_ldrx,

    "int2_mul3x_ldrx_nop_add3x"=>runtest_int2_mul3x_ldrx_nop_add3x,

    "int2_mul3x_udiv3x_maddx_add3x"=>runtest_int2_mul3x_udiv3x_maddx_add3x,

    "int2_ldrx_regoffset_nop_crc32cx_maddx"=>runtest_int2_ldrx_regoffset_nop_crc32cx_maddx,

    "int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset"=>runtest_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset,

    "int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset"=>runtest_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset,

    "int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset"=>runtest_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset,

    "int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x"=>runtest_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x,

)

