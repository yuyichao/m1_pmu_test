#!/usr/bin/julia

runtest_int2_add3x_mul3x_udiv3x_maddx_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_mul3x_udiv3x_maddx_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_mul3x_udiv3x_crc32cx_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_mul3x_udiv3x_crc32cx_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_mul3x_maddx_udiv3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_mul3x_maddx_udiv3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_mul3x_maddx_crc32cx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_mul3x_maddx_crc32cx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_mul3x_crc32cx_udiv3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_mul3x_crc32cx_udiv3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_mul3x_crc32cx_maddx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_mul3x_crc32cx_maddx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_udiv3x_mul3x_maddx_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_udiv3x_mul3x_maddx_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_udiv3x_mul3x_crc32cx_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_udiv3x_mul3x_crc32cx_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_udiv3x_maddx_mul3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_udiv3x_maddx_mul3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_udiv3x_maddx_crc32cx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_udiv3x_maddx_crc32cx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_udiv3x_crc32cx_mul3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_udiv3x_crc32cx_mul3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_udiv3x_crc32cx_maddx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_udiv3x_crc32cx_maddx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_maddx_mul3x_udiv3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_maddx_mul3x_udiv3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_maddx_mul3x_crc32cx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_maddx_mul3x_crc32cx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_maddx_udiv3x_mul3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_maddx_udiv3x_mul3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_maddx_udiv3x_crc32cx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_maddx_udiv3x_crc32cx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_maddx_crc32cx_mul3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_maddx_crc32cx_mul3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_maddx_crc32cx_udiv3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_maddx_crc32cx_udiv3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_crc32cx_mul3x_udiv3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_crc32cx_mul3x_udiv3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_crc32cx_mul3x_maddx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_crc32cx_mul3x_maddx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_crc32cx_udiv3x_mul3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_crc32cx_udiv3x_mul3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_crc32cx_udiv3x_maddx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_crc32cx_udiv3x_maddx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_crc32cx_maddx_mul3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_crc32cx_maddx_mul3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_add3x_crc32cx_maddx_udiv3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_add3x_crc32cx_maddx_udiv3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_add3x_udiv3x_maddx_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_add3x_udiv3x_maddx_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_add3x_udiv3x_crc32cx_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_add3x_udiv3x_crc32cx_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_add3x_maddx_udiv3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_add3x_maddx_udiv3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_add3x_maddx_crc32cx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_add3x_maddx_crc32cx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_add3x_crc32cx_udiv3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_add3x_crc32cx_udiv3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_add3x_crc32cx_maddx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_add3x_crc32cx_maddx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_udiv3x_add3x_maddx_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_udiv3x_add3x_maddx_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_udiv3x_add3x_crc32cx_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_udiv3x_add3x_crc32cx_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_udiv3x_maddx_add3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_udiv3x_maddx_add3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_udiv3x_maddx_crc32cx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_udiv3x_maddx_crc32cx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_udiv3x_crc32cx_add3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_udiv3x_crc32cx_add3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_udiv3x_crc32cx_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_udiv3x_crc32cx_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_maddx_add3x_udiv3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_maddx_add3x_udiv3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_maddx_add3x_crc32cx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_maddx_add3x_crc32cx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_maddx_udiv3x_add3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_maddx_udiv3x_add3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_maddx_udiv3x_crc32cx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_maddx_udiv3x_crc32cx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_maddx_crc32cx_add3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_maddx_crc32cx_add3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_maddx_crc32cx_udiv3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_maddx_crc32cx_udiv3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_crc32cx_add3x_udiv3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_crc32cx_add3x_udiv3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_crc32cx_add3x_maddx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_crc32cx_add3x_maddx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_crc32cx_udiv3x_add3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_crc32cx_udiv3x_add3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_crc32cx_udiv3x_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_crc32cx_udiv3x_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_crc32cx_maddx_add3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_crc32cx_maddx_add3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_mul3x_crc32cx_maddx_udiv3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_mul3x_crc32cx_maddx_udiv3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_add3x_mul3x_maddx_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_add3x_mul3x_maddx_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_add3x_mul3x_crc32cx_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_add3x_mul3x_crc32cx_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_add3x_maddx_mul3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_add3x_maddx_mul3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_add3x_maddx_crc32cx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_add3x_maddx_crc32cx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_add3x_crc32cx_mul3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_add3x_crc32cx_mul3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_add3x_crc32cx_maddx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_add3x_crc32cx_maddx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_mul3x_add3x_maddx_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_mul3x_add3x_maddx_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_mul3x_add3x_crc32cx_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_mul3x_add3x_crc32cx_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_mul3x_maddx_add3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_mul3x_maddx_add3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_mul3x_maddx_crc32cx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_mul3x_maddx_crc32cx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_mul3x_crc32cx_add3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_mul3x_crc32cx_add3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_mul3x_crc32cx_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_mul3x_crc32cx_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_maddx_add3x_mul3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_maddx_add3x_mul3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_maddx_add3x_crc32cx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_maddx_add3x_crc32cx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_maddx_mul3x_add3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_maddx_mul3x_add3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_maddx_mul3x_crc32cx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_maddx_mul3x_crc32cx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_maddx_crc32cx_add3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_maddx_crc32cx_add3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_maddx_crc32cx_mul3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_maddx_crc32cx_mul3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_crc32cx_add3x_mul3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_crc32cx_add3x_mul3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_crc32cx_add3x_maddx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_crc32cx_add3x_maddx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_crc32cx_mul3x_add3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_crc32cx_mul3x_add3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_crc32cx_mul3x_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_crc32cx_mul3x_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_crc32cx_maddx_add3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_crc32cx_maddx_add3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_udiv3x_crc32cx_maddx_mul3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_udiv3x_crc32cx_maddx_mul3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_add3x_mul3x_udiv3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_add3x_mul3x_udiv3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_add3x_mul3x_crc32cx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_add3x_mul3x_crc32cx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_add3x_udiv3x_mul3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_add3x_udiv3x_mul3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_add3x_udiv3x_crc32cx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_add3x_udiv3x_crc32cx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_add3x_crc32cx_mul3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_add3x_crc32cx_mul3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_add3x_crc32cx_udiv3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_add3x_crc32cx_udiv3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_mul3x_add3x_udiv3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_mul3x_add3x_udiv3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_mul3x_add3x_crc32cx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_mul3x_add3x_crc32cx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_mul3x_udiv3x_add3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_mul3x_udiv3x_add3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_mul3x_udiv3x_crc32cx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_mul3x_udiv3x_crc32cx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_mul3x_crc32cx_add3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_mul3x_crc32cx_add3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_mul3x_crc32cx_udiv3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_mul3x_crc32cx_udiv3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_udiv3x_add3x_mul3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_udiv3x_add3x_mul3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_udiv3x_add3x_crc32cx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_udiv3x_add3x_crc32cx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_udiv3x_mul3x_add3x_crc32cx(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_udiv3x_mul3x_add3x_crc32cx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_udiv3x_mul3x_crc32cx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_udiv3x_mul3x_crc32cx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_udiv3x_crc32cx_add3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_udiv3x_crc32cx_add3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_udiv3x_crc32cx_mul3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_udiv3x_crc32cx_mul3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_crc32cx_add3x_mul3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_crc32cx_add3x_mul3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_crc32cx_add3x_udiv3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_crc32cx_add3x_udiv3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_crc32cx_mul3x_add3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_crc32cx_mul3x_add3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_crc32cx_mul3x_udiv3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_crc32cx_mul3x_udiv3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_crc32cx_udiv3x_add3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_crc32cx_udiv3x_add3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_maddx_crc32cx_udiv3x_mul3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_maddx_crc32cx_udiv3x_mul3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_add3x_mul3x_udiv3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_add3x_mul3x_udiv3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_add3x_mul3x_maddx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_add3x_mul3x_maddx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_add3x_udiv3x_mul3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_add3x_udiv3x_mul3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_add3x_udiv3x_maddx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_add3x_udiv3x_maddx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_add3x_maddx_mul3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_add3x_maddx_mul3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_add3x_maddx_udiv3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_add3x_maddx_udiv3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_mul3x_add3x_udiv3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_mul3x_add3x_udiv3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_mul3x_add3x_maddx_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_mul3x_add3x_maddx_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_mul3x_udiv3x_add3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_mul3x_udiv3x_add3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_mul3x_udiv3x_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_mul3x_udiv3x_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_mul3x_maddx_add3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_mul3x_maddx_add3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_mul3x_maddx_udiv3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_mul3x_maddx_udiv3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_udiv3x_add3x_mul3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_udiv3x_add3x_mul3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_udiv3x_add3x_maddx_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_udiv3x_add3x_maddx_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_udiv3x_mul3x_add3x_maddx(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_udiv3x_mul3x_add3x_maddx, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_udiv3x_mul3x_maddx_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_udiv3x_mul3x_maddx_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_udiv3x_maddx_add3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_udiv3x_maddx_add3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_udiv3x_maddx_mul3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_udiv3x_maddx_mul3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_maddx_add3x_mul3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_maddx_add3x_mul3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_maddx_add3x_udiv3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_maddx_add3x_udiv3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_maddx_mul3x_add3x_udiv3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_maddx_mul3x_add3x_udiv3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_maddx_mul3x_udiv3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_maddx_mul3x_udiv3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_maddx_udiv3x_add3x_mul3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_maddx_udiv3x_add3x_mul3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

runtest_int2_crc32cx_maddx_udiv3x_mul3x_add3x(n, ice_res, fire_res) =
    ccall((:runtest_int2_crc32cx_maddx_udiv3x_mul3x_add3x, "./libpmu_test.so"),
          Cvoid, (Cint, Ptr{Int64}, Ptr{Int64}), n, ice_res, fire_res)

const testgrp_int3 = Dict{String,Function}(

    "int2_add3x_mul3x_udiv3x_maddx_crc32cx"=>runtest_int2_add3x_mul3x_udiv3x_maddx_crc32cx,

    "int2_add3x_mul3x_udiv3x_crc32cx_maddx"=>runtest_int2_add3x_mul3x_udiv3x_crc32cx_maddx,

    "int2_add3x_mul3x_maddx_udiv3x_crc32cx"=>runtest_int2_add3x_mul3x_maddx_udiv3x_crc32cx,

    "int2_add3x_mul3x_maddx_crc32cx_udiv3x"=>runtest_int2_add3x_mul3x_maddx_crc32cx_udiv3x,

    "int2_add3x_mul3x_crc32cx_udiv3x_maddx"=>runtest_int2_add3x_mul3x_crc32cx_udiv3x_maddx,

    "int2_add3x_mul3x_crc32cx_maddx_udiv3x"=>runtest_int2_add3x_mul3x_crc32cx_maddx_udiv3x,

    "int2_add3x_udiv3x_mul3x_maddx_crc32cx"=>runtest_int2_add3x_udiv3x_mul3x_maddx_crc32cx,

    "int2_add3x_udiv3x_mul3x_crc32cx_maddx"=>runtest_int2_add3x_udiv3x_mul3x_crc32cx_maddx,

    "int2_add3x_udiv3x_maddx_mul3x_crc32cx"=>runtest_int2_add3x_udiv3x_maddx_mul3x_crc32cx,

    "int2_add3x_udiv3x_maddx_crc32cx_mul3x"=>runtest_int2_add3x_udiv3x_maddx_crc32cx_mul3x,

    "int2_add3x_udiv3x_crc32cx_mul3x_maddx"=>runtest_int2_add3x_udiv3x_crc32cx_mul3x_maddx,

    "int2_add3x_udiv3x_crc32cx_maddx_mul3x"=>runtest_int2_add3x_udiv3x_crc32cx_maddx_mul3x,

    "int2_add3x_maddx_mul3x_udiv3x_crc32cx"=>runtest_int2_add3x_maddx_mul3x_udiv3x_crc32cx,

    "int2_add3x_maddx_mul3x_crc32cx_udiv3x"=>runtest_int2_add3x_maddx_mul3x_crc32cx_udiv3x,

    "int2_add3x_maddx_udiv3x_mul3x_crc32cx"=>runtest_int2_add3x_maddx_udiv3x_mul3x_crc32cx,

    "int2_add3x_maddx_udiv3x_crc32cx_mul3x"=>runtest_int2_add3x_maddx_udiv3x_crc32cx_mul3x,

    "int2_add3x_maddx_crc32cx_mul3x_udiv3x"=>runtest_int2_add3x_maddx_crc32cx_mul3x_udiv3x,

    "int2_add3x_maddx_crc32cx_udiv3x_mul3x"=>runtest_int2_add3x_maddx_crc32cx_udiv3x_mul3x,

    "int2_add3x_crc32cx_mul3x_udiv3x_maddx"=>runtest_int2_add3x_crc32cx_mul3x_udiv3x_maddx,

    "int2_add3x_crc32cx_mul3x_maddx_udiv3x"=>runtest_int2_add3x_crc32cx_mul3x_maddx_udiv3x,

    "int2_add3x_crc32cx_udiv3x_mul3x_maddx"=>runtest_int2_add3x_crc32cx_udiv3x_mul3x_maddx,

    "int2_add3x_crc32cx_udiv3x_maddx_mul3x"=>runtest_int2_add3x_crc32cx_udiv3x_maddx_mul3x,

    "int2_add3x_crc32cx_maddx_mul3x_udiv3x"=>runtest_int2_add3x_crc32cx_maddx_mul3x_udiv3x,

    "int2_add3x_crc32cx_maddx_udiv3x_mul3x"=>runtest_int2_add3x_crc32cx_maddx_udiv3x_mul3x,

    "int2_mul3x_add3x_udiv3x_maddx_crc32cx"=>runtest_int2_mul3x_add3x_udiv3x_maddx_crc32cx,

    "int2_mul3x_add3x_udiv3x_crc32cx_maddx"=>runtest_int2_mul3x_add3x_udiv3x_crc32cx_maddx,

    "int2_mul3x_add3x_maddx_udiv3x_crc32cx"=>runtest_int2_mul3x_add3x_maddx_udiv3x_crc32cx,

    "int2_mul3x_add3x_maddx_crc32cx_udiv3x"=>runtest_int2_mul3x_add3x_maddx_crc32cx_udiv3x,

    "int2_mul3x_add3x_crc32cx_udiv3x_maddx"=>runtest_int2_mul3x_add3x_crc32cx_udiv3x_maddx,

    "int2_mul3x_add3x_crc32cx_maddx_udiv3x"=>runtest_int2_mul3x_add3x_crc32cx_maddx_udiv3x,

    "int2_mul3x_udiv3x_add3x_maddx_crc32cx"=>runtest_int2_mul3x_udiv3x_add3x_maddx_crc32cx,

    "int2_mul3x_udiv3x_add3x_crc32cx_maddx"=>runtest_int2_mul3x_udiv3x_add3x_crc32cx_maddx,

    "int2_mul3x_udiv3x_maddx_add3x_crc32cx"=>runtest_int2_mul3x_udiv3x_maddx_add3x_crc32cx,

    "int2_mul3x_udiv3x_maddx_crc32cx_add3x"=>runtest_int2_mul3x_udiv3x_maddx_crc32cx_add3x,

    "int2_mul3x_udiv3x_crc32cx_add3x_maddx"=>runtest_int2_mul3x_udiv3x_crc32cx_add3x_maddx,

    "int2_mul3x_udiv3x_crc32cx_maddx_add3x"=>runtest_int2_mul3x_udiv3x_crc32cx_maddx_add3x,

    "int2_mul3x_maddx_add3x_udiv3x_crc32cx"=>runtest_int2_mul3x_maddx_add3x_udiv3x_crc32cx,

    "int2_mul3x_maddx_add3x_crc32cx_udiv3x"=>runtest_int2_mul3x_maddx_add3x_crc32cx_udiv3x,

    "int2_mul3x_maddx_udiv3x_add3x_crc32cx"=>runtest_int2_mul3x_maddx_udiv3x_add3x_crc32cx,

    "int2_mul3x_maddx_udiv3x_crc32cx_add3x"=>runtest_int2_mul3x_maddx_udiv3x_crc32cx_add3x,

    "int2_mul3x_maddx_crc32cx_add3x_udiv3x"=>runtest_int2_mul3x_maddx_crc32cx_add3x_udiv3x,

    "int2_mul3x_maddx_crc32cx_udiv3x_add3x"=>runtest_int2_mul3x_maddx_crc32cx_udiv3x_add3x,

    "int2_mul3x_crc32cx_add3x_udiv3x_maddx"=>runtest_int2_mul3x_crc32cx_add3x_udiv3x_maddx,

    "int2_mul3x_crc32cx_add3x_maddx_udiv3x"=>runtest_int2_mul3x_crc32cx_add3x_maddx_udiv3x,

    "int2_mul3x_crc32cx_udiv3x_add3x_maddx"=>runtest_int2_mul3x_crc32cx_udiv3x_add3x_maddx,

    "int2_mul3x_crc32cx_udiv3x_maddx_add3x"=>runtest_int2_mul3x_crc32cx_udiv3x_maddx_add3x,

    "int2_mul3x_crc32cx_maddx_add3x_udiv3x"=>runtest_int2_mul3x_crc32cx_maddx_add3x_udiv3x,

    "int2_mul3x_crc32cx_maddx_udiv3x_add3x"=>runtest_int2_mul3x_crc32cx_maddx_udiv3x_add3x,

    "int2_udiv3x_add3x_mul3x_maddx_crc32cx"=>runtest_int2_udiv3x_add3x_mul3x_maddx_crc32cx,

    "int2_udiv3x_add3x_mul3x_crc32cx_maddx"=>runtest_int2_udiv3x_add3x_mul3x_crc32cx_maddx,

    "int2_udiv3x_add3x_maddx_mul3x_crc32cx"=>runtest_int2_udiv3x_add3x_maddx_mul3x_crc32cx,

    "int2_udiv3x_add3x_maddx_crc32cx_mul3x"=>runtest_int2_udiv3x_add3x_maddx_crc32cx_mul3x,

    "int2_udiv3x_add3x_crc32cx_mul3x_maddx"=>runtest_int2_udiv3x_add3x_crc32cx_mul3x_maddx,

    "int2_udiv3x_add3x_crc32cx_maddx_mul3x"=>runtest_int2_udiv3x_add3x_crc32cx_maddx_mul3x,

    "int2_udiv3x_mul3x_add3x_maddx_crc32cx"=>runtest_int2_udiv3x_mul3x_add3x_maddx_crc32cx,

    "int2_udiv3x_mul3x_add3x_crc32cx_maddx"=>runtest_int2_udiv3x_mul3x_add3x_crc32cx_maddx,

    "int2_udiv3x_mul3x_maddx_add3x_crc32cx"=>runtest_int2_udiv3x_mul3x_maddx_add3x_crc32cx,

    "int2_udiv3x_mul3x_maddx_crc32cx_add3x"=>runtest_int2_udiv3x_mul3x_maddx_crc32cx_add3x,

    "int2_udiv3x_mul3x_crc32cx_add3x_maddx"=>runtest_int2_udiv3x_mul3x_crc32cx_add3x_maddx,

    "int2_udiv3x_mul3x_crc32cx_maddx_add3x"=>runtest_int2_udiv3x_mul3x_crc32cx_maddx_add3x,

    "int2_udiv3x_maddx_add3x_mul3x_crc32cx"=>runtest_int2_udiv3x_maddx_add3x_mul3x_crc32cx,

    "int2_udiv3x_maddx_add3x_crc32cx_mul3x"=>runtest_int2_udiv3x_maddx_add3x_crc32cx_mul3x,

    "int2_udiv3x_maddx_mul3x_add3x_crc32cx"=>runtest_int2_udiv3x_maddx_mul3x_add3x_crc32cx,

    "int2_udiv3x_maddx_mul3x_crc32cx_add3x"=>runtest_int2_udiv3x_maddx_mul3x_crc32cx_add3x,

    "int2_udiv3x_maddx_crc32cx_add3x_mul3x"=>runtest_int2_udiv3x_maddx_crc32cx_add3x_mul3x,

    "int2_udiv3x_maddx_crc32cx_mul3x_add3x"=>runtest_int2_udiv3x_maddx_crc32cx_mul3x_add3x,

    "int2_udiv3x_crc32cx_add3x_mul3x_maddx"=>runtest_int2_udiv3x_crc32cx_add3x_mul3x_maddx,

    "int2_udiv3x_crc32cx_add3x_maddx_mul3x"=>runtest_int2_udiv3x_crc32cx_add3x_maddx_mul3x,

    "int2_udiv3x_crc32cx_mul3x_add3x_maddx"=>runtest_int2_udiv3x_crc32cx_mul3x_add3x_maddx,

    "int2_udiv3x_crc32cx_mul3x_maddx_add3x"=>runtest_int2_udiv3x_crc32cx_mul3x_maddx_add3x,

    "int2_udiv3x_crc32cx_maddx_add3x_mul3x"=>runtest_int2_udiv3x_crc32cx_maddx_add3x_mul3x,

    "int2_udiv3x_crc32cx_maddx_mul3x_add3x"=>runtest_int2_udiv3x_crc32cx_maddx_mul3x_add3x,

    "int2_maddx_add3x_mul3x_udiv3x_crc32cx"=>runtest_int2_maddx_add3x_mul3x_udiv3x_crc32cx,

    "int2_maddx_add3x_mul3x_crc32cx_udiv3x"=>runtest_int2_maddx_add3x_mul3x_crc32cx_udiv3x,

    "int2_maddx_add3x_udiv3x_mul3x_crc32cx"=>runtest_int2_maddx_add3x_udiv3x_mul3x_crc32cx,

    "int2_maddx_add3x_udiv3x_crc32cx_mul3x"=>runtest_int2_maddx_add3x_udiv3x_crc32cx_mul3x,

    "int2_maddx_add3x_crc32cx_mul3x_udiv3x"=>runtest_int2_maddx_add3x_crc32cx_mul3x_udiv3x,

    "int2_maddx_add3x_crc32cx_udiv3x_mul3x"=>runtest_int2_maddx_add3x_crc32cx_udiv3x_mul3x,

    "int2_maddx_mul3x_add3x_udiv3x_crc32cx"=>runtest_int2_maddx_mul3x_add3x_udiv3x_crc32cx,

    "int2_maddx_mul3x_add3x_crc32cx_udiv3x"=>runtest_int2_maddx_mul3x_add3x_crc32cx_udiv3x,

    "int2_maddx_mul3x_udiv3x_add3x_crc32cx"=>runtest_int2_maddx_mul3x_udiv3x_add3x_crc32cx,

    "int2_maddx_mul3x_udiv3x_crc32cx_add3x"=>runtest_int2_maddx_mul3x_udiv3x_crc32cx_add3x,

    "int2_maddx_mul3x_crc32cx_add3x_udiv3x"=>runtest_int2_maddx_mul3x_crc32cx_add3x_udiv3x,

    "int2_maddx_mul3x_crc32cx_udiv3x_add3x"=>runtest_int2_maddx_mul3x_crc32cx_udiv3x_add3x,

    "int2_maddx_udiv3x_add3x_mul3x_crc32cx"=>runtest_int2_maddx_udiv3x_add3x_mul3x_crc32cx,

    "int2_maddx_udiv3x_add3x_crc32cx_mul3x"=>runtest_int2_maddx_udiv3x_add3x_crc32cx_mul3x,

    "int2_maddx_udiv3x_mul3x_add3x_crc32cx"=>runtest_int2_maddx_udiv3x_mul3x_add3x_crc32cx,

    "int2_maddx_udiv3x_mul3x_crc32cx_add3x"=>runtest_int2_maddx_udiv3x_mul3x_crc32cx_add3x,

    "int2_maddx_udiv3x_crc32cx_add3x_mul3x"=>runtest_int2_maddx_udiv3x_crc32cx_add3x_mul3x,

    "int2_maddx_udiv3x_crc32cx_mul3x_add3x"=>runtest_int2_maddx_udiv3x_crc32cx_mul3x_add3x,

    "int2_maddx_crc32cx_add3x_mul3x_udiv3x"=>runtest_int2_maddx_crc32cx_add3x_mul3x_udiv3x,

    "int2_maddx_crc32cx_add3x_udiv3x_mul3x"=>runtest_int2_maddx_crc32cx_add3x_udiv3x_mul3x,

    "int2_maddx_crc32cx_mul3x_add3x_udiv3x"=>runtest_int2_maddx_crc32cx_mul3x_add3x_udiv3x,

    "int2_maddx_crc32cx_mul3x_udiv3x_add3x"=>runtest_int2_maddx_crc32cx_mul3x_udiv3x_add3x,

    "int2_maddx_crc32cx_udiv3x_add3x_mul3x"=>runtest_int2_maddx_crc32cx_udiv3x_add3x_mul3x,

    "int2_maddx_crc32cx_udiv3x_mul3x_add3x"=>runtest_int2_maddx_crc32cx_udiv3x_mul3x_add3x,

    "int2_crc32cx_add3x_mul3x_udiv3x_maddx"=>runtest_int2_crc32cx_add3x_mul3x_udiv3x_maddx,

    "int2_crc32cx_add3x_mul3x_maddx_udiv3x"=>runtest_int2_crc32cx_add3x_mul3x_maddx_udiv3x,

    "int2_crc32cx_add3x_udiv3x_mul3x_maddx"=>runtest_int2_crc32cx_add3x_udiv3x_mul3x_maddx,

    "int2_crc32cx_add3x_udiv3x_maddx_mul3x"=>runtest_int2_crc32cx_add3x_udiv3x_maddx_mul3x,

    "int2_crc32cx_add3x_maddx_mul3x_udiv3x"=>runtest_int2_crc32cx_add3x_maddx_mul3x_udiv3x,

    "int2_crc32cx_add3x_maddx_udiv3x_mul3x"=>runtest_int2_crc32cx_add3x_maddx_udiv3x_mul3x,

    "int2_crc32cx_mul3x_add3x_udiv3x_maddx"=>runtest_int2_crc32cx_mul3x_add3x_udiv3x_maddx,

    "int2_crc32cx_mul3x_add3x_maddx_udiv3x"=>runtest_int2_crc32cx_mul3x_add3x_maddx_udiv3x,

    "int2_crc32cx_mul3x_udiv3x_add3x_maddx"=>runtest_int2_crc32cx_mul3x_udiv3x_add3x_maddx,

    "int2_crc32cx_mul3x_udiv3x_maddx_add3x"=>runtest_int2_crc32cx_mul3x_udiv3x_maddx_add3x,

    "int2_crc32cx_mul3x_maddx_add3x_udiv3x"=>runtest_int2_crc32cx_mul3x_maddx_add3x_udiv3x,

    "int2_crc32cx_mul3x_maddx_udiv3x_add3x"=>runtest_int2_crc32cx_mul3x_maddx_udiv3x_add3x,

    "int2_crc32cx_udiv3x_add3x_mul3x_maddx"=>runtest_int2_crc32cx_udiv3x_add3x_mul3x_maddx,

    "int2_crc32cx_udiv3x_add3x_maddx_mul3x"=>runtest_int2_crc32cx_udiv3x_add3x_maddx_mul3x,

    "int2_crc32cx_udiv3x_mul3x_add3x_maddx"=>runtest_int2_crc32cx_udiv3x_mul3x_add3x_maddx,

    "int2_crc32cx_udiv3x_mul3x_maddx_add3x"=>runtest_int2_crc32cx_udiv3x_mul3x_maddx_add3x,

    "int2_crc32cx_udiv3x_maddx_add3x_mul3x"=>runtest_int2_crc32cx_udiv3x_maddx_add3x_mul3x,

    "int2_crc32cx_udiv3x_maddx_mul3x_add3x"=>runtest_int2_crc32cx_udiv3x_maddx_mul3x_add3x,

    "int2_crc32cx_maddx_add3x_mul3x_udiv3x"=>runtest_int2_crc32cx_maddx_add3x_mul3x_udiv3x,

    "int2_crc32cx_maddx_add3x_udiv3x_mul3x"=>runtest_int2_crc32cx_maddx_add3x_udiv3x_mul3x,

    "int2_crc32cx_maddx_mul3x_add3x_udiv3x"=>runtest_int2_crc32cx_maddx_mul3x_add3x_udiv3x,

    "int2_crc32cx_maddx_mul3x_udiv3x_add3x"=>runtest_int2_crc32cx_maddx_mul3x_udiv3x_add3x,

    "int2_crc32cx_maddx_udiv3x_add3x_mul3x"=>runtest_int2_crc32cx_maddx_udiv3x_add3x_mul3x,

    "int2_crc32cx_maddx_udiv3x_mul3x_add3x"=>runtest_int2_crc32cx_maddx_udiv3x_mul3x_add3x,

)

