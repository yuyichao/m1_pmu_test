//

#include "pmu_utils.h"

#include <stdlib.h>

static inline int kernel(int *p, int v)
{
    int ret;
    asm volatile ("ldxr %0, [%1]\n\t"
                  "str %2, [%1]\n"
                  : "=&r"(ret) : "r"(p), "r"(v) : "memory");
    return ret;
}

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        int mem = 0;
        for (int i = 0; i < n; i++) {
            kernel(&mem, 0);
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
