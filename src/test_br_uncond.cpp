//

#include "pmu_utils.h"

#include <stdlib.h>

static inline void kernel()
{
    asm volatile ("b L_target%=\n\t"
                  "L_target%=:\n"
                  ::: "memory");
}

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        for (int i = 0; i < n; i++) {
            kernel();
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
