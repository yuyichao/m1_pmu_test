//

#include "pmu_utils.h"

#include <stdlib.h>

static inline void kernel()
{
    asm volatile ("bl L_func%=\n\t"
                  "b L_target%=\n\t"
                  "L_func%=:\n\t"
                  "ret\n\t"
                  "L_target%=:\n"
                  ::: "r30", "memory");
}

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        for (int i = 0; i < n; i++) {
            kernel();
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
