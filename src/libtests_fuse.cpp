//

#include "libtests.h"

extern "C" void kernel_nop_precmp_1(int n);
extern "C" void runtest_nop_precmp_1(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_precmp_1, n, ice_res, fire_res);
}

extern "C" void kernel_nop_precmp_4(int n);
extern "C" void runtest_nop_precmp_4(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_precmp_4, n, ice_res, fire_res);
}

extern "C" void kernel_nop_precmp_16(int n);
extern "C" void runtest_nop_precmp_16(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_precmp_16, n, ice_res, fire_res);
}

extern "C" void kernel_nop_precmp_64(int n);
extern "C" void runtest_nop_precmp_64(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_nop_precmp_64, n, ice_res, fire_res);
}
