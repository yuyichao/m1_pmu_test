//

#include "pmu_utils.h"

extern int icestorm_core;
extern int firestorm_core;
extern "C" void set_cores(int ice, int fire);

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
