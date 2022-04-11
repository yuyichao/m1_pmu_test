//

#include "pmu_utils.h"

#include <stdlib.h>
#include <sys/syscall.h>
#include <unistd.h>

static inline void kernel()
{
    syscall(SYS_gettid);
}

int main(int argc, char **argv)
{
    perf_res([&] (int n) {
        for (int i = 0; i < n; i++) {
            kernel();
        }
    }, atoi(argv[1]), atoi(argv[2])).print();
}
