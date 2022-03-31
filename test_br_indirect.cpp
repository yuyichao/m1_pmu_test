//

#include "pmu_utils.h"

#include <stdlib.h>

static int a;

static inline void kernel()
{
    void *p = &&L2;
    asm volatile ("" : "+r"(p) : "r"(&&L1), "r"(&&L2) : "memory");
    goto *p;
L1:
    a += 1;
L2:
    return;
}

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        for (int i = 0; i < n; i++) {
            kernel();
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
