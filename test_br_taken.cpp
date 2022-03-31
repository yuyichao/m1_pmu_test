//

#include "pmu_utils.h"

#include <stdlib.h>

static inline void kernel(int v1, int v2)
{
    asm volatile ("cmp %0, %1\n\t"
                  "b.eq L_target%=\n\t"
                  "L_target%=:\n"
                  :: "r"(v1), "r"(v2) : "memory");
}

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        for (int i = 0; i < n; i++) {
            kernel(0, 0);
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
