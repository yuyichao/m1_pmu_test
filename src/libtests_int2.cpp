//

#include "libtests.h"

extern "C" void kernel_int2_mul3x_nop(int n);
extern "C" void runtest_int2_mul3x_nop(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_nop, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_regoffset_maddx(int n);
extern "C" void runtest_int2_ldrx_regoffset_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_regoffset_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_ldrx(int n);
extern "C" void runtest_int2_maddx_ldrx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_ldrx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_mul3x(int n);
extern "C" void runtest_int2_ldrx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_ldrx_regoffset(int n);
extern "C" void runtest_int2_ldrx_ldrx_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_ldrx_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_ldrx_regoffset(int n);
extern "C" void runtest_int2_maddx_ldrx_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_ldrx_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_add3x(int n);
extern "C" void runtest_int2_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_nop(int n);
extern "C" void runtest_int2_add3x_nop(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_nop, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_udiv3x(int n);
extern "C" void runtest_int2_ldrx_udiv3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_udiv3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx(int n);
extern "C" void runtest_int2_udiv3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_maddx(int n);
extern "C" void runtest_int2_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_maddx(int n);
extern "C" void runtest_int2_ldrx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_add3x_ldrx_regoffset(int n);
extern "C" void runtest_int2_mul3x_add3x_ldrx_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_add3x_ldrx_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_crc32cx_nop(int n);
extern "C" void runtest_int2_udiv3x_crc32cx_nop(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_crc32cx_nop, n, ice_res, fire_res);
}

extern "C" void kernel_int2_nop_udiv3x_maddx(int n);
extern "C" void runtest_int2_nop_udiv3x_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_nop_udiv3x_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_add3x_ldrx_regoffset_ldrx(int n);
extern "C" void runtest_int2_add3x_ldrx_regoffset_ldrx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_add3x_ldrx_regoffset_ldrx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_mul3x_ldrx(int n);
extern "C" void runtest_int2_udiv3x_mul3x_ldrx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_mul3x_ldrx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_nop_mul3x(int n);
extern "C" void runtest_int2_crc32cx_nop_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_nop_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_ldrx_nop_add3x(int n);
extern "C" void runtest_int2_mul3x_ldrx_nop_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_ldrx_nop_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_udiv3x_maddx_add3x(int n);
extern "C" void runtest_int2_mul3x_udiv3x_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_udiv3x_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_regoffset_nop_crc32cx_maddx(int n);
extern "C" void runtest_int2_ldrx_regoffset_nop_crc32cx_maddx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_regoffset_nop_crc32cx_maddx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_regoffset_nop_ldrx_crc32cx(int n);
extern "C" void runtest_int2_ldrx_regoffset_nop_ldrx_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_regoffset_nop_ldrx_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_ldrx_regoffset_nop_ldrx_regoffset(int n);
extern "C" void runtest_int2_ldrx_ldrx_regoffset_nop_ldrx_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_ldrx_regoffset_nop_ldrx_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_ldrx_regoffset_crc32cx_mul3x(int n);
extern "C" void runtest_int2_crc32cx_ldrx_regoffset_crc32cx_mul3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_ldrx_regoffset_crc32cx_mul3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_regoffset_maddx_mul3x_ldrx_maddx_add3x(int n);
extern "C" void runtest_int2_ldrx_regoffset_maddx_mul3x_ldrx_maddx_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_regoffset_maddx_mul3x_ldrx_maddx_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_mul3x_ldrx_nop_mul3x_crc32cx(int n);
extern "C" void runtest_int2_crc32cx_mul3x_ldrx_nop_mul3x_crc32cx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_mul3x_ldrx_nop_mul3x_crc32cx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_maddx_nop_ldrx_regoffset_maddx_nop_add3x(int n);
extern "C" void runtest_int2_maddx_nop_ldrx_regoffset_maddx_nop_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_maddx_nop_ldrx_regoffset_maddx_nop_add3x, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_crc32cx_mul3x_add3x_maddx_ldrx(int n);
extern "C" void runtest_int2_ldrx_crc32cx_mul3x_add3x_maddx_ldrx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_crc32cx_mul3x_add3x_maddx_ldrx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_nop_ldrx_regoffset_ldrx_udiv3x_nop(int n);
extern "C" void runtest_int2_udiv3x_nop_ldrx_regoffset_ldrx_udiv3x_nop(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_nop_ldrx_regoffset_ldrx_udiv3x_nop, n, ice_res, fire_res);
}

extern "C" void kernel_int2_mul3x_maddx_ldrx_ldrx_mul3x_ldrx(int n);
extern "C" void runtest_int2_mul3x_maddx_ldrx_ldrx_mul3x_ldrx(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_mul3x_maddx_ldrx_ldrx_mul3x_ldrx, n, ice_res, fire_res);
}

extern "C" void kernel_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset(int n);
extern "C" void runtest_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_nop_mul3x_ldrx_udiv3x_mul3x_udiv3x_mul3x_ldrx_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset(int n);
extern "C" void runtest_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_udiv3x_maddx_crc32cx_ldrx_regoffset_ldrx_maddx_crc32cx_ldrx_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset(int n);
extern "C" void runtest_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_ldrx_mul3x_maddx_crc32cx_nop_ldrx_add3x_nop_udiv3x_mul3x_ldrx_regoffset_ldrx_regoffset_nop_maddx_nop_ldrx_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x(int n);
extern "C" void runtest_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_int2_crc32cx_udiv3x_crc32cx_mul3x_add3x_udiv3x_maddx_maddx_ldrx_maddx_ldrx_crc32cx_ldrx_ldrx_mul3x_add3x, n, ice_res, fire_res);
}
