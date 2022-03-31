//

#include <assert.h>
#include <inttypes.h>
#include <linux/perf_event.h>
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/syscall.h>
#include <unistd.h>

#include <vector>
#include <utility>

static inline int perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
                                  int cpu, int group_fd, unsigned long flags)
{
    return (int)syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
}

static inline int perf_start(int type, int config)
{
    struct perf_event_attr pe = {};
    memset(&pe, 0, sizeof(pe));
    pe.size = sizeof(pe);
    pe.disabled = 0;
    pe.exclude_kernel = 1;
    pe.exclude_hv = 1;
    pe.exclude_idle = 1;
    pe.exclude_guest = 1;
    pe.type = type;
    pe.config = config;
    return perf_event_open(&pe, 0, -1, -1, 0);
}

static inline int64_t perf_finish(int fd)
{
    ioctl(fd, PERF_EVENT_IOC_DISABLE);
    long long res;
    ssize_t r = read(fd, &res, sizeof(res));
    assert(r == sizeof(res));
    (void)r;
    close(fd);
    return res;
}

template<typename Cb>
__attribute__((flatten,noinline)) static int64_t perf_run(Cb &&cb, int n, int type, int evt)
{
    int fd = perf_start(type, evt);
    cb(n);
    return perf_finish(fd);
}

constexpr int run_ns[] = {1, 100, 10000, 1000000};

template<typename Cb>
static std::vector<int64_t> perf_run_rep(Cb &&cb, int type, int evt)
{
    std::vector<int64_t> res;
    for (int n: run_ns)
        res.push_back(perf_run(cb, n, type, evt));
    return res;
}

static void thread_pin(int cpu)
{
    auto self = pthread_self();

    int ret;
    if (cpu < CPU_SETSIZE) {
        cpu_set_t cpuset;
        CPU_ZERO(&cpuset);
        CPU_SET(cpu, &cpuset);
        ret = pthread_setaffinity_np(self, sizeof(cpu_set_t), &cpuset);
    }
    else {
        auto cpuset = CPU_ALLOC(cpu + 1);
        auto setsize = CPU_ALLOC_SIZE(cpu + 1);
        CPU_ZERO_S(setsize, cpuset);
        CPU_SET_S(cpu, setsize, cpuset);
        ret = pthread_setaffinity_np(self, setsize, cpuset);
        CPU_FREE(cpuset);
    }
    assert(ret == 0);
    (void)ret;
}

struct perf_res {
    std::vector<std::vector<int64_t>> icestorm_res, firestorm_res;

    template<typename Cb>
    perf_res(Cb &&cb, int icestorm_core, int firestorm_core)
    {
        thread_pin(icestorm_core);
        fprintf(stderr, "Running on icestorm\n");
        for (int evt = 0; evt < 256; evt++) {
            icestorm_res.push_back(perf_run_rep(cb, 6, evt));
        }
        thread_pin(firestorm_core);
        fprintf(stderr, "Running on firestorm\n");
        for (int evt = 0; evt < 256; evt++) {
            firestorm_res.push_back(perf_run_rep(cb, 7, evt));
        }
    }

    void print()
    {
        printf("evt");
        for (int n: run_ns)
            printf(",%d,%d", n, n);
        printf("\n");
        for (int evt = 0; evt < 256; evt++) {
            auto &ir = icestorm_res[evt];
            auto &fr = firestorm_res[evt];
            printf("%02x", evt);
            for (int i = 0; i < std::size(run_ns); i++)
                printf(",%" PRIu64 ",%" PRIu64, ir[i], fr[i]);
            printf("\n");
        }
    }
};
