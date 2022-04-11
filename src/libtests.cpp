//

#include "libtests.h"

#include <sys/mman.h>
#include <sys/syscall.h>
#include <unistd.h>

int icestorm_core = 0;
int firestorm_core = 0;

extern "C" void set_cores(int ice, int fire)
{
    icestorm_core = ice;
    firestorm_core = fire;
}

extern "C" void branch_test(const int8_t *conds, int n,
                            int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto _conds = conds;
        for (int i = 0; i < n; i++) {
            if (_conds[i]) {
                asm volatile ("nop":::"memory");
            }
        }
    }, n, ice_res, fire_res);
}

extern "C" void branch_target_test(const int8_t *tgts, int n,
                                   int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        void *p;
        void *p2;
        const int8_t *ends = tgts + n;
        asm volatile ("adrp %0, Ltarget0_%=\n\t"
                      "add %0, %0, :lo12:Ltarget0_%=\n"
                      "Lloop_%=:\n\t"
                      "ldrsb %w1, [%2]\n\t"
                      "add %1, %0, %1, lsl #2\n\t"
                      "br %1\n\t"
                      "Ltarget0_%=:\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "nop\n\t"
                      "add %2, %2, #1\n\t"
                      "cmp %2, %3\n\t"
                      "b.ne Lloop_%=\n\t"
                      : "=&r"(p), "=&r"(p2) : "r"(tgts), "r"(ends) : "memory");
    }, n, ice_res, fire_res);
}

extern "C" void mem_load_test(const volatile int *_buff, int n,
                              int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        unsigned idx = 0;
        for (int i = 0; i < n; i++) {
            idx = buff[idx];
        }
    }, n, ice_res, fire_res);
}

static inline uint64_t xorshift64s(uint64_t &x)
{
    x ^= x >> 12; // a
    x ^= x << 25; // b
    x ^= x >> 27; // c
    return x * 0x2545F4914F6CDD1DULL;
}

extern "C" void mem_load_test2(const volatile int *_buff, uint64_t _seed, uint32_t _sz,
                               int n, int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        auto seed = _seed;
        auto sz = _sz;
        for (int i = 0; i < n; i++) {
            buff[(xorshift64s(seed) + i) % sz];
        }
    }, n, ice_res, fire_res);
}

extern "C" void mem_store_test2(volatile int *_buff, uint64_t _seed, uint32_t _sz,
                                int n, int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        auto seed = _seed;
        auto sz = _sz;
        for (int i = 0; i < n; i++) {
            buff[(xorshift64s(seed) + i) % sz] = i;
        }
    }, n, ice_res, fire_res);
}

extern "C" void mem_load_test3(const volatile int *_buff, uint64_t _seed, uint32_t _sz,
                               uint64_t _stride, int n, int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        auto seed = _seed;
        auto sz = _sz;
        auto stride = _stride;
        for (int i = 0; i < n; i++) {
            buff[((xorshift64s(seed) + i) % sz) * stride];
        }
    }, n, ice_res, fire_res);
}

extern "C" void mem_store_test3(volatile int *_buff, uint64_t _seed, uint32_t _sz,
                                uint64_t _stride, int n, int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        auto seed = _seed;
        auto sz = _sz;
        auto stride = _stride;
        for (int i = 0; i < n; i++) {
            buff[((xorshift64s(seed) + i) % sz) * stride] = i;
        }
    }, n, ice_res, fire_res);
}

extern "C" void mem_load_test4(const volatile int *_buff, uint64_t _seed, uint32_t _sz,
                               uint64_t _stride, int n, int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        auto seed = _seed;
        auto sz = _sz;
        auto stride = _stride;
        for (int i = 0; i < n; i++) {
            auto v = xorshift64s(seed) + i;
            buff[(v % sz) * stride + v % stride];
        }
    }, n, ice_res, fire_res);
}

extern "C" void mem_store_test4(volatile int *_buff, uint64_t _seed, uint32_t _sz,
                                uint64_t _stride, int n, int64_t *ice_res, int64_t *fire_res)
{
    return run_multi([&] (int n) {
        auto buff = _buff;
        auto seed = _seed;
        auto sz = _sz;
        auto stride = _stride;
        for (int i = 0; i < n; i++) {
            auto v = xorshift64s(seed) + i;
            buff[(v % sz) * stride + v % stride] = i;
        }
    }, n, ice_res, fire_res);
}

extern "C" void mem_load_test5(uint64_t _seed, uint32_t _sz, uint64_t _stride,
                               int n, int64_t *ice_res, int64_t *fire_res)
{
    auto _buff = mmap(nullptr, _sz * sizeof(int) * _stride, PROT_READ | PROT_WRITE,
                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    run_multi([&] (int n) {
        auto buff = (const volatile int*)_buff;
        auto seed = _seed;
        auto sz = _sz;
        auto stride = _stride;
        for (int i = 0; i < n; i++) {
            auto idx = (xorshift64s(seed) + i) % sz;
            buff[idx * stride + idx % stride];
        }
    }, n, ice_res, fire_res);
    munmap(_buff, _sz * sizeof(int) * _stride);
}

extern "C" void mem_store_test5(uint64_t _seed, uint32_t _sz, uint64_t _stride,
                                int n, int64_t *ice_res, int64_t *fire_res)
{
    auto _buff = mmap(nullptr, _sz * sizeof(int) * _stride, PROT_READ | PROT_WRITE,
                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    run_multi([&] (int n) {
        auto buff = (volatile int*)_buff;
        auto seed = _seed;
        auto sz = _sz;
        auto stride = _stride;
        for (int i = 0; i < n; i++) {
            auto idx = (xorshift64s(seed) + i) % sz;
            buff[idx * stride + idx % stride] = i;
        }
    }, n, ice_res, fire_res);
    munmap(_buff, _sz * sizeof(int) * _stride);
}

extern "C" void mem_call_test(uint64_t _seed, uint32_t _sz, uint64_t _stride,
                              int n, int64_t *ice_res, int64_t *fire_res)
{
    auto nele = _sz * _stride;
    auto _buff = (int*)mmap(nullptr, nele * sizeof(int), PROT_READ | PROT_WRITE,
                            MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    for (uint64_t i = 0; i < nele; i++)
        _buff[i] = 0xd65f03c0; // ret
    mprotect(_buff, nele * sizeof(int), PROT_READ | PROT_EXEC);
    run_multi([&] (int n) {
        auto buff = _buff;
        auto seed = _seed;
        auto sz = _sz;
        auto stride = _stride;
        for (int i = 0; i < n; i++) {
            auto idx = (xorshift64s(seed) + i) % sz;
            auto ptr = &buff[idx * stride + idx % stride];
            // Use inline assembly to let the compiler know that we are not modifying
            // any register but the link register.
            asm volatile ("blr %0" :: "r"(ptr) : "r30", "memory");
        }
    }, n, ice_res, fire_res);
    munmap(_buff, nele * sizeof(int));
}

extern "C" void syscall_test(int n, int64_t *ice_res, int64_t *fire_res)
{
    run_multi([&] (int n) {
        for (int i = 0; i < n; i++) {
            syscall(SYS_gettid);
        }
    }, n, ice_res, fire_res);
}
