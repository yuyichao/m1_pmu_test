//

#include "libtests.h"


extern "C" void kernel_swp_w(int n);
extern "C" void runtest_swp_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swp_w, n, ice_res, fire_res);
}

extern "C" void kernel_swp_x(int n);
extern "C" void runtest_swp_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swp_x, n, ice_res, fire_res);
}

extern "C" void kernel_swpa_w(int n);
extern "C" void runtest_swpa_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swpa_w, n, ice_res, fire_res);
}

extern "C" void kernel_swpa_x(int n);
extern "C" void runtest_swpa_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swpa_x, n, ice_res, fire_res);
}

extern "C" void kernel_swpl_w(int n);
extern "C" void runtest_swpl_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swpl_w, n, ice_res, fire_res);
}

extern "C" void kernel_swpl_x(int n);
extern "C" void runtest_swpl_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swpl_x, n, ice_res, fire_res);
}

extern "C" void kernel_swpal_w(int n);
extern "C" void runtest_swpal_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swpal_w, n, ice_res, fire_res);
}

extern "C" void kernel_swpal_x(int n);
extern "C" void runtest_swpal_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_swpal_x, n, ice_res, fire_res);
}

extern "C" void kernel_cas_w(int n);
extern "C" void runtest_cas_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_cas_w, n, ice_res, fire_res);
}

extern "C" void kernel_cas_fail_w(int n);
extern "C" void runtest_cas_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_cas_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_casp_w(int n);
extern "C" void runtest_casp_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casp_w, n, ice_res, fire_res);
}

extern "C" void kernel_casp_fail_w(int n);
extern "C" void runtest_casp_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casp_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_cas_x(int n);
extern "C" void runtest_cas_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_cas_x, n, ice_res, fire_res);
}

extern "C" void kernel_cas_fail_x(int n);
extern "C" void runtest_cas_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_cas_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_casp_x(int n);
extern "C" void runtest_casp_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casp_x, n, ice_res, fire_res);
}

extern "C" void kernel_casp_fail_x(int n);
extern "C" void runtest_casp_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casp_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_casa_w(int n);
extern "C" void runtest_casa_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casa_w, n, ice_res, fire_res);
}

extern "C" void kernel_casa_fail_w(int n);
extern "C" void runtest_casa_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casa_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_caspa_w(int n);
extern "C" void runtest_caspa_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspa_w, n, ice_res, fire_res);
}

extern "C" void kernel_caspa_fail_w(int n);
extern "C" void runtest_caspa_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspa_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_casa_x(int n);
extern "C" void runtest_casa_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casa_x, n, ice_res, fire_res);
}

extern "C" void kernel_casa_fail_x(int n);
extern "C" void runtest_casa_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casa_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_caspa_x(int n);
extern "C" void runtest_caspa_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspa_x, n, ice_res, fire_res);
}

extern "C" void kernel_caspa_fail_x(int n);
extern "C" void runtest_caspa_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspa_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_casl_w(int n);
extern "C" void runtest_casl_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casl_w, n, ice_res, fire_res);
}

extern "C" void kernel_casl_fail_w(int n);
extern "C" void runtest_casl_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casl_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_caspl_w(int n);
extern "C" void runtest_caspl_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspl_w, n, ice_res, fire_res);
}

extern "C" void kernel_caspl_fail_w(int n);
extern "C" void runtest_caspl_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspl_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_casl_x(int n);
extern "C" void runtest_casl_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casl_x, n, ice_res, fire_res);
}

extern "C" void kernel_casl_fail_x(int n);
extern "C" void runtest_casl_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casl_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_caspl_x(int n);
extern "C" void runtest_caspl_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspl_x, n, ice_res, fire_res);
}

extern "C" void kernel_caspl_fail_x(int n);
extern "C" void runtest_caspl_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspl_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_casal_w(int n);
extern "C" void runtest_casal_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casal_w, n, ice_res, fire_res);
}

extern "C" void kernel_casal_fail_w(int n);
extern "C" void runtest_casal_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casal_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_caspal_w(int n);
extern "C" void runtest_caspal_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspal_w, n, ice_res, fire_res);
}

extern "C" void kernel_caspal_fail_w(int n);
extern "C" void runtest_caspal_fail_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspal_fail_w, n, ice_res, fire_res);
}

extern "C" void kernel_casal_x(int n);
extern "C" void runtest_casal_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casal_x, n, ice_res, fire_res);
}

extern "C" void kernel_casal_fail_x(int n);
extern "C" void runtest_casal_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_casal_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_caspal_x(int n);
extern "C" void runtest_caspal_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspal_x, n, ice_res, fire_res);
}

extern "C" void kernel_caspal_fail_x(int n);
extern "C" void runtest_caspal_fail_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_caspal_fail_x, n, ice_res, fire_res);
}

extern "C" void kernel_ldadd_w(int n);
extern "C" void runtest_ldadd_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldadd_w, n, ice_res, fire_res);
}

extern "C" void kernel_stadd_w(int n);
extern "C" void runtest_stadd_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_stadd_w, n, ice_res, fire_res);
}

extern "C" void kernel_ldadd_x(int n);
extern "C" void runtest_ldadd_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldadd_x, n, ice_res, fire_res);
}

extern "C" void kernel_stadd_x(int n);
extern "C" void runtest_stadd_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_stadd_x, n, ice_res, fire_res);
}

extern "C" void kernel_ldadda_w(int n);
extern "C" void runtest_ldadda_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldadda_w, n, ice_res, fire_res);
}

extern "C" void kernel_ldadda_x(int n);
extern "C" void runtest_ldadda_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldadda_x, n, ice_res, fire_res);
}

extern "C" void kernel_ldaddl_w(int n);
extern "C" void runtest_ldaddl_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldaddl_w, n, ice_res, fire_res);
}

extern "C" void kernel_staddl_w(int n);
extern "C" void runtest_staddl_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_staddl_w, n, ice_res, fire_res);
}

extern "C" void kernel_ldaddl_x(int n);
extern "C" void runtest_ldaddl_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldaddl_x, n, ice_res, fire_res);
}

extern "C" void kernel_staddl_x(int n);
extern "C" void runtest_staddl_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_staddl_x, n, ice_res, fire_res);
}

extern "C" void kernel_ldaddal_w(int n);
extern "C" void runtest_ldaddal_w(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldaddal_w, n, ice_res, fire_res);
}

extern "C" void kernel_ldaddal_x(int n);
extern "C" void runtest_ldaddal_x(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi(kernel_ldaddal_x, n, ice_res, fire_res);
}

