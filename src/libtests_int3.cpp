//

#include "libtests.h"

extern "C" void kernel_int2_add3x_mul3x_udiv3x_maddx_crc32cx(int n);
extern "C" void runtest_int2_add3x_mul3x_udiv3x_maddx_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_mul3x_udiv3x_maddx_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_mul3x_udiv3x_crc32cx_maddx(int n);
extern "C" void runtest_int2_add3x_mul3x_udiv3x_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_mul3x_udiv3x_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_mul3x_maddx_udiv3x_crc32cx(int n);
extern "C" void runtest_int2_add3x_mul3x_maddx_udiv3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_mul3x_maddx_udiv3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_mul3x_maddx_crc32cx_udiv3x(int n);
extern "C" void runtest_int2_add3x_mul3x_maddx_crc32cx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_mul3x_maddx_crc32cx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_mul3x_crc32cx_udiv3x_maddx(int n);
extern "C" void runtest_int2_add3x_mul3x_crc32cx_udiv3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_mul3x_crc32cx_udiv3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_mul3x_crc32cx_maddx_udiv3x(int n);
extern "C" void runtest_int2_add3x_mul3x_crc32cx_maddx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_mul3x_crc32cx_maddx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_udiv3x_mul3x_maddx_crc32cx(int n);
extern "C" void runtest_int2_add3x_udiv3x_mul3x_maddx_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_udiv3x_mul3x_maddx_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_udiv3x_mul3x_crc32cx_maddx(int n);
extern "C" void runtest_int2_add3x_udiv3x_mul3x_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_udiv3x_mul3x_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_udiv3x_maddx_mul3x_crc32cx(int n);
extern "C" void runtest_int2_add3x_udiv3x_maddx_mul3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_udiv3x_maddx_mul3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_udiv3x_maddx_crc32cx_mul3x(int n);
extern "C" void runtest_int2_add3x_udiv3x_maddx_crc32cx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_udiv3x_maddx_crc32cx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_udiv3x_crc32cx_mul3x_maddx(int n);
extern "C" void runtest_int2_add3x_udiv3x_crc32cx_mul3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_udiv3x_crc32cx_mul3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_udiv3x_crc32cx_maddx_mul3x(int n);
extern "C" void runtest_int2_add3x_udiv3x_crc32cx_maddx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_udiv3x_crc32cx_maddx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_maddx_mul3x_udiv3x_crc32cx(int n);
extern "C" void runtest_int2_add3x_maddx_mul3x_udiv3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_maddx_mul3x_udiv3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_maddx_mul3x_crc32cx_udiv3x(int n);
extern "C" void runtest_int2_add3x_maddx_mul3x_crc32cx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_maddx_mul3x_crc32cx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_maddx_udiv3x_mul3x_crc32cx(int n);
extern "C" void runtest_int2_add3x_maddx_udiv3x_mul3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_maddx_udiv3x_mul3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_maddx_udiv3x_crc32cx_mul3x(int n);
extern "C" void runtest_int2_add3x_maddx_udiv3x_crc32cx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_maddx_udiv3x_crc32cx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_maddx_crc32cx_mul3x_udiv3x(int n);
extern "C" void runtest_int2_add3x_maddx_crc32cx_mul3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_maddx_crc32cx_mul3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_maddx_crc32cx_udiv3x_mul3x(int n);
extern "C" void runtest_int2_add3x_maddx_crc32cx_udiv3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_maddx_crc32cx_udiv3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_crc32cx_mul3x_udiv3x_maddx(int n);
extern "C" void runtest_int2_add3x_crc32cx_mul3x_udiv3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_crc32cx_mul3x_udiv3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_crc32cx_mul3x_maddx_udiv3x(int n);
extern "C" void runtest_int2_add3x_crc32cx_mul3x_maddx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_crc32cx_mul3x_maddx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_crc32cx_udiv3x_mul3x_maddx(int n);
extern "C" void runtest_int2_add3x_crc32cx_udiv3x_mul3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_crc32cx_udiv3x_mul3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_crc32cx_udiv3x_maddx_mul3x(int n);
extern "C" void runtest_int2_add3x_crc32cx_udiv3x_maddx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_crc32cx_udiv3x_maddx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_crc32cx_maddx_mul3x_udiv3x(int n);
extern "C" void runtest_int2_add3x_crc32cx_maddx_mul3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_crc32cx_maddx_mul3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_crc32cx_maddx_udiv3x_mul3x(int n);
extern "C" void runtest_int2_add3x_crc32cx_maddx_udiv3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_crc32cx_maddx_udiv3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_add3x_udiv3x_maddx_crc32cx(int n);
extern "C" void runtest_int2_mul3x_add3x_udiv3x_maddx_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_add3x_udiv3x_maddx_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_add3x_udiv3x_crc32cx_maddx(int n);
extern "C" void runtest_int2_mul3x_add3x_udiv3x_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_add3x_udiv3x_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_add3x_maddx_udiv3x_crc32cx(int n);
extern "C" void runtest_int2_mul3x_add3x_maddx_udiv3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_add3x_maddx_udiv3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_add3x_maddx_crc32cx_udiv3x(int n);
extern "C" void runtest_int2_mul3x_add3x_maddx_crc32cx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_add3x_maddx_crc32cx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_add3x_crc32cx_udiv3x_maddx(int n);
extern "C" void runtest_int2_mul3x_add3x_crc32cx_udiv3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_add3x_crc32cx_udiv3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_add3x_crc32cx_maddx_udiv3x(int n);
extern "C" void runtest_int2_mul3x_add3x_crc32cx_maddx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_add3x_crc32cx_maddx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_udiv3x_add3x_maddx_crc32cx(int n);
extern "C" void runtest_int2_mul3x_udiv3x_add3x_maddx_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_udiv3x_add3x_maddx_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_udiv3x_add3x_crc32cx_maddx(int n);
extern "C" void runtest_int2_mul3x_udiv3x_add3x_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_udiv3x_add3x_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_udiv3x_maddx_add3x_crc32cx(int n);
extern "C" void runtest_int2_mul3x_udiv3x_maddx_add3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_udiv3x_maddx_add3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_udiv3x_maddx_crc32cx_add3x(int n);
extern "C" void runtest_int2_mul3x_udiv3x_maddx_crc32cx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_udiv3x_maddx_crc32cx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_udiv3x_crc32cx_add3x_maddx(int n);
extern "C" void runtest_int2_mul3x_udiv3x_crc32cx_add3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_udiv3x_crc32cx_add3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_udiv3x_crc32cx_maddx_add3x(int n);
extern "C" void runtest_int2_mul3x_udiv3x_crc32cx_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_udiv3x_crc32cx_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_maddx_add3x_udiv3x_crc32cx(int n);
extern "C" void runtest_int2_mul3x_maddx_add3x_udiv3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_maddx_add3x_udiv3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_maddx_add3x_crc32cx_udiv3x(int n);
extern "C" void runtest_int2_mul3x_maddx_add3x_crc32cx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_maddx_add3x_crc32cx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_maddx_udiv3x_add3x_crc32cx(int n);
extern "C" void runtest_int2_mul3x_maddx_udiv3x_add3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_maddx_udiv3x_add3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_maddx_udiv3x_crc32cx_add3x(int n);
extern "C" void runtest_int2_mul3x_maddx_udiv3x_crc32cx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_maddx_udiv3x_crc32cx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_maddx_crc32cx_add3x_udiv3x(int n);
extern "C" void runtest_int2_mul3x_maddx_crc32cx_add3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_maddx_crc32cx_add3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_maddx_crc32cx_udiv3x_add3x(int n);
extern "C" void runtest_int2_mul3x_maddx_crc32cx_udiv3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_maddx_crc32cx_udiv3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_crc32cx_add3x_udiv3x_maddx(int n);
extern "C" void runtest_int2_mul3x_crc32cx_add3x_udiv3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_crc32cx_add3x_udiv3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_crc32cx_add3x_maddx_udiv3x(int n);
extern "C" void runtest_int2_mul3x_crc32cx_add3x_maddx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_crc32cx_add3x_maddx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_crc32cx_udiv3x_add3x_maddx(int n);
extern "C" void runtest_int2_mul3x_crc32cx_udiv3x_add3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_crc32cx_udiv3x_add3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_crc32cx_udiv3x_maddx_add3x(int n);
extern "C" void runtest_int2_mul3x_crc32cx_udiv3x_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_crc32cx_udiv3x_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_crc32cx_maddx_add3x_udiv3x(int n);
extern "C" void runtest_int2_mul3x_crc32cx_maddx_add3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_crc32cx_maddx_add3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_crc32cx_maddx_udiv3x_add3x(int n);
extern "C" void runtest_int2_mul3x_crc32cx_maddx_udiv3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_crc32cx_maddx_udiv3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_add3x_mul3x_maddx_crc32cx(int n);
extern "C" void runtest_int2_udiv3x_add3x_mul3x_maddx_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_add3x_mul3x_maddx_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_add3x_mul3x_crc32cx_maddx(int n);
extern "C" void runtest_int2_udiv3x_add3x_mul3x_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_add3x_mul3x_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_add3x_maddx_mul3x_crc32cx(int n);
extern "C" void runtest_int2_udiv3x_add3x_maddx_mul3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_add3x_maddx_mul3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_add3x_maddx_crc32cx_mul3x(int n);
extern "C" void runtest_int2_udiv3x_add3x_maddx_crc32cx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_add3x_maddx_crc32cx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_add3x_crc32cx_mul3x_maddx(int n);
extern "C" void runtest_int2_udiv3x_add3x_crc32cx_mul3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_add3x_crc32cx_mul3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_add3x_crc32cx_maddx_mul3x(int n);
extern "C" void runtest_int2_udiv3x_add3x_crc32cx_maddx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_add3x_crc32cx_maddx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_mul3x_add3x_maddx_crc32cx(int n);
extern "C" void runtest_int2_udiv3x_mul3x_add3x_maddx_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_mul3x_add3x_maddx_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_mul3x_add3x_crc32cx_maddx(int n);
extern "C" void runtest_int2_udiv3x_mul3x_add3x_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_mul3x_add3x_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_mul3x_maddx_add3x_crc32cx(int n);
extern "C" void runtest_int2_udiv3x_mul3x_maddx_add3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_mul3x_maddx_add3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_mul3x_maddx_crc32cx_add3x(int n);
extern "C" void runtest_int2_udiv3x_mul3x_maddx_crc32cx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_mul3x_maddx_crc32cx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_mul3x_crc32cx_add3x_maddx(int n);
extern "C" void runtest_int2_udiv3x_mul3x_crc32cx_add3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_mul3x_crc32cx_add3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_mul3x_crc32cx_maddx_add3x(int n);
extern "C" void runtest_int2_udiv3x_mul3x_crc32cx_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_mul3x_crc32cx_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_maddx_add3x_mul3x_crc32cx(int n);
extern "C" void runtest_int2_udiv3x_maddx_add3x_mul3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_maddx_add3x_mul3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_maddx_add3x_crc32cx_mul3x(int n);
extern "C" void runtest_int2_udiv3x_maddx_add3x_crc32cx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_maddx_add3x_crc32cx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_maddx_mul3x_add3x_crc32cx(int n);
extern "C" void runtest_int2_udiv3x_maddx_mul3x_add3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_maddx_mul3x_add3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_maddx_mul3x_crc32cx_add3x(int n);
extern "C" void runtest_int2_udiv3x_maddx_mul3x_crc32cx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_maddx_mul3x_crc32cx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_maddx_crc32cx_add3x_mul3x(int n);
extern "C" void runtest_int2_udiv3x_maddx_crc32cx_add3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_maddx_crc32cx_add3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_maddx_crc32cx_mul3x_add3x(int n);
extern "C" void runtest_int2_udiv3x_maddx_crc32cx_mul3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_maddx_crc32cx_mul3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx_add3x_mul3x_maddx(int n);
extern "C" void runtest_int2_udiv3x_crc32cx_add3x_mul3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx_add3x_mul3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx_add3x_maddx_mul3x(int n);
extern "C" void runtest_int2_udiv3x_crc32cx_add3x_maddx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx_add3x_maddx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx_mul3x_add3x_maddx(int n);
extern "C" void runtest_int2_udiv3x_crc32cx_mul3x_add3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx_mul3x_add3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx_mul3x_maddx_add3x(int n);
extern "C" void runtest_int2_udiv3x_crc32cx_mul3x_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx_mul3x_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx_maddx_add3x_mul3x(int n);
extern "C" void runtest_int2_udiv3x_crc32cx_maddx_add3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx_maddx_add3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx_maddx_mul3x_add3x(int n);
extern "C" void runtest_int2_udiv3x_crc32cx_maddx_mul3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx_maddx_mul3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_add3x_mul3x_udiv3x_crc32cx(int n);
extern "C" void runtest_int2_maddx_add3x_mul3x_udiv3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_add3x_mul3x_udiv3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_add3x_mul3x_crc32cx_udiv3x(int n);
extern "C" void runtest_int2_maddx_add3x_mul3x_crc32cx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_add3x_mul3x_crc32cx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_add3x_udiv3x_mul3x_crc32cx(int n);
extern "C" void runtest_int2_maddx_add3x_udiv3x_mul3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_add3x_udiv3x_mul3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_add3x_udiv3x_crc32cx_mul3x(int n);
extern "C" void runtest_int2_maddx_add3x_udiv3x_crc32cx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_add3x_udiv3x_crc32cx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_add3x_crc32cx_mul3x_udiv3x(int n);
extern "C" void runtest_int2_maddx_add3x_crc32cx_mul3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_add3x_crc32cx_mul3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_add3x_crc32cx_udiv3x_mul3x(int n);
extern "C" void runtest_int2_maddx_add3x_crc32cx_udiv3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_add3x_crc32cx_udiv3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_mul3x_add3x_udiv3x_crc32cx(int n);
extern "C" void runtest_int2_maddx_mul3x_add3x_udiv3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_mul3x_add3x_udiv3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_mul3x_add3x_crc32cx_udiv3x(int n);
extern "C" void runtest_int2_maddx_mul3x_add3x_crc32cx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_mul3x_add3x_crc32cx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_mul3x_udiv3x_add3x_crc32cx(int n);
extern "C" void runtest_int2_maddx_mul3x_udiv3x_add3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_mul3x_udiv3x_add3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_mul3x_udiv3x_crc32cx_add3x(int n);
extern "C" void runtest_int2_maddx_mul3x_udiv3x_crc32cx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_mul3x_udiv3x_crc32cx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_mul3x_crc32cx_add3x_udiv3x(int n);
extern "C" void runtest_int2_maddx_mul3x_crc32cx_add3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_mul3x_crc32cx_add3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_mul3x_crc32cx_udiv3x_add3x(int n);
extern "C" void runtest_int2_maddx_mul3x_crc32cx_udiv3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_mul3x_crc32cx_udiv3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_udiv3x_add3x_mul3x_crc32cx(int n);
extern "C" void runtest_int2_maddx_udiv3x_add3x_mul3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_udiv3x_add3x_mul3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_udiv3x_add3x_crc32cx_mul3x(int n);
extern "C" void runtest_int2_maddx_udiv3x_add3x_crc32cx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_udiv3x_add3x_crc32cx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_udiv3x_mul3x_add3x_crc32cx(int n);
extern "C" void runtest_int2_maddx_udiv3x_mul3x_add3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_udiv3x_mul3x_add3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_udiv3x_mul3x_crc32cx_add3x(int n);
extern "C" void runtest_int2_maddx_udiv3x_mul3x_crc32cx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_udiv3x_mul3x_crc32cx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_udiv3x_crc32cx_add3x_mul3x(int n);
extern "C" void runtest_int2_maddx_udiv3x_crc32cx_add3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_udiv3x_crc32cx_add3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_udiv3x_crc32cx_mul3x_add3x(int n);
extern "C" void runtest_int2_maddx_udiv3x_crc32cx_mul3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_udiv3x_crc32cx_mul3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_crc32cx_add3x_mul3x_udiv3x(int n);
extern "C" void runtest_int2_maddx_crc32cx_add3x_mul3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_crc32cx_add3x_mul3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_crc32cx_add3x_udiv3x_mul3x(int n);
extern "C" void runtest_int2_maddx_crc32cx_add3x_udiv3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_crc32cx_add3x_udiv3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_crc32cx_mul3x_add3x_udiv3x(int n);
extern "C" void runtest_int2_maddx_crc32cx_mul3x_add3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_crc32cx_mul3x_add3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_crc32cx_mul3x_udiv3x_add3x(int n);
extern "C" void runtest_int2_maddx_crc32cx_mul3x_udiv3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_crc32cx_mul3x_udiv3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_crc32cx_udiv3x_add3x_mul3x(int n);
extern "C" void runtest_int2_maddx_crc32cx_udiv3x_add3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_crc32cx_udiv3x_add3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_crc32cx_udiv3x_mul3x_add3x(int n);
extern "C" void runtest_int2_maddx_crc32cx_udiv3x_mul3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_crc32cx_udiv3x_mul3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_add3x_mul3x_udiv3x_maddx(int n);
extern "C" void runtest_int2_crc32cx_add3x_mul3x_udiv3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_add3x_mul3x_udiv3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_add3x_mul3x_maddx_udiv3x(int n);
extern "C" void runtest_int2_crc32cx_add3x_mul3x_maddx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_add3x_mul3x_maddx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_add3x_udiv3x_mul3x_maddx(int n);
extern "C" void runtest_int2_crc32cx_add3x_udiv3x_mul3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_add3x_udiv3x_mul3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_add3x_udiv3x_maddx_mul3x(int n);
extern "C" void runtest_int2_crc32cx_add3x_udiv3x_maddx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_add3x_udiv3x_maddx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_add3x_maddx_mul3x_udiv3x(int n);
extern "C" void runtest_int2_crc32cx_add3x_maddx_mul3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_add3x_maddx_mul3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_add3x_maddx_udiv3x_mul3x(int n);
extern "C" void runtest_int2_crc32cx_add3x_maddx_udiv3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_add3x_maddx_udiv3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_mul3x_add3x_udiv3x_maddx(int n);
extern "C" void runtest_int2_crc32cx_mul3x_add3x_udiv3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_mul3x_add3x_udiv3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_mul3x_add3x_maddx_udiv3x(int n);
extern "C" void runtest_int2_crc32cx_mul3x_add3x_maddx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_mul3x_add3x_maddx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_mul3x_udiv3x_add3x_maddx(int n);
extern "C" void runtest_int2_crc32cx_mul3x_udiv3x_add3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_mul3x_udiv3x_add3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_mul3x_udiv3x_maddx_add3x(int n);
extern "C" void runtest_int2_crc32cx_mul3x_udiv3x_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_mul3x_udiv3x_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_mul3x_maddx_add3x_udiv3x(int n);
extern "C" void runtest_int2_crc32cx_mul3x_maddx_add3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_mul3x_maddx_add3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_mul3x_maddx_udiv3x_add3x(int n);
extern "C" void runtest_int2_crc32cx_mul3x_maddx_udiv3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_mul3x_maddx_udiv3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_udiv3x_add3x_mul3x_maddx(int n);
extern "C" void runtest_int2_crc32cx_udiv3x_add3x_mul3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_udiv3x_add3x_mul3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_udiv3x_add3x_maddx_mul3x(int n);
extern "C" void runtest_int2_crc32cx_udiv3x_add3x_maddx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_udiv3x_add3x_maddx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_udiv3x_mul3x_add3x_maddx(int n);
extern "C" void runtest_int2_crc32cx_udiv3x_mul3x_add3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_udiv3x_mul3x_add3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_udiv3x_mul3x_maddx_add3x(int n);
extern "C" void runtest_int2_crc32cx_udiv3x_mul3x_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_udiv3x_mul3x_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_udiv3x_maddx_add3x_mul3x(int n);
extern "C" void runtest_int2_crc32cx_udiv3x_maddx_add3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_udiv3x_maddx_add3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_udiv3x_maddx_mul3x_add3x(int n);
extern "C" void runtest_int2_crc32cx_udiv3x_maddx_mul3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_udiv3x_maddx_mul3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_maddx_add3x_mul3x_udiv3x(int n);
extern "C" void runtest_int2_crc32cx_maddx_add3x_mul3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_maddx_add3x_mul3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_maddx_add3x_udiv3x_mul3x(int n);
extern "C" void runtest_int2_crc32cx_maddx_add3x_udiv3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_maddx_add3x_udiv3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_maddx_mul3x_add3x_udiv3x(int n);
extern "C" void runtest_int2_crc32cx_maddx_mul3x_add3x_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_maddx_mul3x_add3x_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_maddx_mul3x_udiv3x_add3x(int n);
extern "C" void runtest_int2_crc32cx_maddx_mul3x_udiv3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_maddx_mul3x_udiv3x_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_maddx_udiv3x_add3x_mul3x(int n);
extern "C" void runtest_int2_crc32cx_maddx_udiv3x_add3x_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_maddx_udiv3x_add3x_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_maddx_udiv3x_mul3x_add3x(int n);
extern "C" void runtest_int2_crc32cx_maddx_udiv3x_mul3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_maddx_udiv3x_mul3x_add3x, n, ice_res, fire_res);
}
