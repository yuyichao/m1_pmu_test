//

#include "pmu_utils.h"

static int icestorm_core = 0;
static int firestorm_core = 0;

extern "C" void set_cores(int ice, int fire)
{
    icestorm_core = ice;
    firestorm_core = fire;
}

template<typename Cb>
static void run_multi(Cb &&cb, int n, int64_t *ice_res, int64_t *fire_res)
{
    thread_pin(icestorm_core);
    for (int evt = 0; evt < 256; evt++) {
        ice_res[evt] = perf_run(cb, n, 6, evt);
    }
    thread_pin(firestorm_core);
    for (int evt = 0; evt < 256; evt++) {
        fire_res[evt] = perf_run(cb, n, 7, evt);
    }
}

extern "C" void branch_test(const int8_t *conds, int n,
                            int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto _conds = conds;
        for (int i = 0; i < n; i++) {
            if (_conds[i]) {
                asm volatile ("nop":::"memory");
            }
        }
    }, n, ice_res, fire_res);
}

extern "C" void branch_target_test(const int8_t *tgts, int n,
                                   int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        void *p;
        void *p2;
        const int8_t *ends = tgts + n;
        asm volatile ("adrp %0, Ltarget0_%=\n\t"
                      "add %0, %0, :lo12:Ltarget0_%=\n"
                      "Lloop_%=:\n\t"
                      "ldrsb %w1, [%2]\n\t"
                      "add %1, %0, %1, lsl #2\n\t"
                      "br %1\n\t"
                      "Ltarget0_%=:\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "add %2, %2, #1\n\t"
                      "cmp %2, %3\n\t"
                      "b.ne Lloop_%=\n\t"
                      : "=&r"(p), "=&r"(p2) : "r"(tgts), "r"(ends) : "memory");
    }, n, ice_res, fire_res);
}

extern "C" void mem_load_test(const volatile int *_buff, int n,
                              int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        unsigned idx = 0;
        for (int i = 0; i < n; i++) {
            idx = buff[idx];
        }
    }, n, ice_res, fire_res);
}
