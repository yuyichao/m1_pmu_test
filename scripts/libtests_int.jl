#!/usr/bin/julia

runtest_nop_1(n, ice_res, fire_res) =
    ccall((:runtest_nop_1, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_addx_1(n, ice_res, fire_res) =
    ccall((:runtest_addx_1, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_mulx_1(n, ice_res, fire_res) =
    ccall((:runtest_mulx_1, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_udivx_1(n, ice_res, fire_res) =
    ccall((:runtest_udivx_1, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_maddx_1(n, ice_res, fire_res) =
    ccall((:runtest_maddx_1, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_crc32cx_1(n, ice_res, fire_res) =
    ccall((:runtest_crc32cx_1, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_nop_4(n, ice_res, fire_res) =
    ccall((:runtest_nop_4, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_addx_4(n, ice_res, fire_res) =
    ccall((:runtest_addx_4, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_mulx_4(n, ice_res, fire_res) =
    ccall((:runtest_mulx_4, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_udivx_4(n, ice_res, fire_res) =
    ccall((:runtest_udivx_4, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_maddx_4(n, ice_res, fire_res) =
    ccall((:runtest_maddx_4, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_crc32cx_4(n, ice_res, fire_res) =
    ccall((:runtest_crc32cx_4, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_nop_16(n, ice_res, fire_res) =
    ccall((:runtest_nop_16, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_addx_16(n, ice_res, fire_res) =
    ccall((:runtest_addx_16, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_mulx_16(n, ice_res, fire_res) =
    ccall((:runtest_mulx_16, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_udivx_16(n, ice_res, fire_res) =
    ccall((:runtest_udivx_16, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_maddx_16(n, ice_res, fire_res) =
    ccall((:runtest_maddx_16, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_crc32cx_16(n, ice_res, fire_res) =
    ccall((:runtest_crc32cx_16, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_nop_64(n, ice_res, fire_res) =
    ccall((:runtest_nop_64, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_addx_64(n, ice_res, fire_res) =
    ccall((:runtest_addx_64, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_mulx_64(n, ice_res, fire_res) =
    ccall((:runtest_mulx_64, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_udivx_64(n, ice_res, fire_res) =
    ccall((:runtest_udivx_64, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_maddx_64(n, ice_res, fire_res) =
    ccall((:runtest_maddx_64, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_crc32cx_64(n, ice_res, fire_res) =
    ccall((:runtest_crc32cx_64, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_load_regoffset(n, ice_res, fire_res) =
    ccall((:runtest_load_regoffset, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_load_regoffset_addrmode(n, ice_res, fire_res) =
    ccall((:runtest_load_regoffset_addrmode, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

const testgrp_int = Dict{String,Function}(

    "nop_1"=>runtest_nop_1,

    "addx_1"=>runtest_addx_1,

    "mulx_1"=>runtest_mulx_1,

    "udivx_1"=>runtest_udivx_1,

    "maddx_1"=>runtest_maddx_1,

    "crc32cx_1"=>runtest_crc32cx_1,

    "nop_4"=>runtest_nop_4,

    "addx_4"=>runtest_addx_4,

    "mulx_4"=>runtest_mulx_4,

    "udivx_4"=>runtest_udivx_4,

    "maddx_4"=>runtest_maddx_4,

    "crc32cx_4"=>runtest_crc32cx_4,

    "nop_16"=>runtest_nop_16,

    "addx_16"=>runtest_addx_16,

    "mulx_16"=>runtest_mulx_16,

    "udivx_16"=>runtest_udivx_16,

    "maddx_16"=>runtest_maddx_16,

    "crc32cx_16"=>runtest_crc32cx_16,

    "nop_64"=>runtest_nop_64,

    "addx_64"=>runtest_addx_64,

    "mulx_64"=>runtest_mulx_64,

    "udivx_64"=>runtest_udivx_64,

    "maddx_64"=>runtest_maddx_64,

    "crc32cx_64"=>runtest_crc32cx_64,

    "load_regoffset"=>runtest_load_regoffset,

    "load_regoffset_addrmode"=>runtest_load_regoffset_addrmode,

)

