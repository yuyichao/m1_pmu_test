//

#include "pmu_utils.h"

#include <stdlib.h>

int main(int argc, char **argv)
{
    int ncores = atoi(argv[1]);
    for (int i = 0; i < ncores; i++) {
        thread_pin(i);
        unsigned int cache_info;
        asm volatile ("mrs %0, ctr_el0" : "=r"(cache_info));
        auto icache_lsize = 4 << (cache_info & 0xF);
        auto dcache_lsize = 4 << ((cache_info >> 16) & 0xF);
        printf("%d: %x, icache_line=%d, dcache_line=%d\n",
               i, cache_info, icache_lsize, dcache_lsize);
    }
    return 0;
}
