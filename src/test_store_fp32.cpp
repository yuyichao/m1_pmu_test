//

#include "pmu_utils.h"

#include <stdlib.h>

static int g[16] __attribute__((aligned(64)));

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        for (int i = 0; i < n; i++) {
            float v1;
            asm volatile ("str %s0, [%1]\n" :
                          "=w"(v1) : "r"(g) : "memory");
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
