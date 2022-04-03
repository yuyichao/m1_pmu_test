//

#include "libtests.h"

extern "C" void kernel_nop_1(int n);
extern "C" void runtest_nop_1(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_1, n, ice_res, fire_res);
}

extern "C" void kernel_addx_1(int n);
extern "C" void runtest_addx_1(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_addx_1, n, ice_res, fire_res);
}

extern "C" void kernel_mulx_1(int n);
extern "C" void runtest_mulx_1(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_mulx_1, n, ice_res, fire_res);
}

extern "C" void kernel_udivx_1(int n);
extern "C" void runtest_udivx_1(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_udivx_1, n, ice_res, fire_res);
}

extern "C" void kernel_maddx_1(int n);
extern "C" void runtest_maddx_1(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_maddx_1, n, ice_res, fire_res);
}

extern "C" void kernel_crc32cx_1(int n);
extern "C" void runtest_crc32cx_1(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_crc32cx_1, n, ice_res, fire_res);
}

extern "C" void kernel_nop_4(int n);
extern "C" void runtest_nop_4(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_4, n, ice_res, fire_res);
}

extern "C" void kernel_addx_4(int n);
extern "C" void runtest_addx_4(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_addx_4, n, ice_res, fire_res);
}

extern "C" void kernel_mulx_4(int n);
extern "C" void runtest_mulx_4(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_mulx_4, n, ice_res, fire_res);
}

extern "C" void kernel_udivx_4(int n);
extern "C" void runtest_udivx_4(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_udivx_4, n, ice_res, fire_res);
}

extern "C" void kernel_maddx_4(int n);
extern "C" void runtest_maddx_4(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_maddx_4, n, ice_res, fire_res);
}

extern "C" void kernel_crc32cx_4(int n);
extern "C" void runtest_crc32cx_4(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_crc32cx_4, n, ice_res, fire_res);
}

extern "C" void kernel_nop_16(int n);
extern "C" void runtest_nop_16(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_16, n, ice_res, fire_res);
}

extern "C" void kernel_addx_16(int n);
extern "C" void runtest_addx_16(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_addx_16, n, ice_res, fire_res);
}

extern "C" void kernel_mulx_16(int n);
extern "C" void runtest_mulx_16(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_mulx_16, n, ice_res, fire_res);
}

extern "C" void kernel_udivx_16(int n);
extern "C" void runtest_udivx_16(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_udivx_16, n, ice_res, fire_res);
}

extern "C" void kernel_maddx_16(int n);
extern "C" void runtest_maddx_16(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_maddx_16, n, ice_res, fire_res);
}

extern "C" void kernel_crc32cx_16(int n);
extern "C" void runtest_crc32cx_16(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_crc32cx_16, n, ice_res, fire_res);
}

extern "C" void kernel_nop_64(int n);
extern "C" void runtest_nop_64(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_64, n, ice_res, fire_res);
}

extern "C" void kernel_addx_64(int n);
extern "C" void runtest_addx_64(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_addx_64, n, ice_res, fire_res);
}

extern "C" void kernel_mulx_64(int n);
extern "C" void runtest_mulx_64(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_mulx_64, n, ice_res, fire_res);
}

extern "C" void kernel_udivx_64(int n);
extern "C" void runtest_udivx_64(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_udivx_64, n, ice_res, fire_res);
}

extern "C" void kernel_maddx_64(int n);
extern "C" void runtest_maddx_64(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_maddx_64, n, ice_res, fire_res);
}

extern "C" void kernel_crc32cx_64(int n);
extern "C" void runtest_crc32cx_64(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_crc32cx_64, n, ice_res, fire_res);
}

extern "C" void kernel_load_regoffset(int n);
extern "C" void runtest_load_regoffset(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_load_regoffset, n, ice_res, fire_res);
}

extern "C" void kernel_load_regoffset_addrmode(int n);
extern "C" void runtest_load_regoffset_addrmode(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_load_regoffset_addrmode, n, ice_res, fire_res);
}
