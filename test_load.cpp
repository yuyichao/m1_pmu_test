//

#include "pmu_utils.h"

#include <stdlib.h>

static volatile int g = 0;

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        for (int i = 0; i < n; i++) {
            (void)g;
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
