cmake_minimum_required(VERSION 3.10)

project(m1_pmu_test)

set(CMAKE_C_FLAGS "-O3 -Wall -Wextra -Wno-sign-compare -Wno-unused-parameter ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-O3 -Wall -Wextra -Wno-sign-compare -Wno-unused-parameter ${CMAKE_CXX_FLAGS}")
set(CMAKE_CXX_STANDARD 17)
add_definitions(-D_GNU_SOURCE -UNDEBUG)

add_executable(print_cache print_cache.cpp)

add_executable(test_lxsx test_lxsx.cpp)
add_executable(test_lxsn test_lxsn.cpp)
add_executable(test_lnsx test_lnsx.cpp)
add_executable(test_lnsn test_lnsn.cpp)

add_executable(test_br_uncond test_br_uncond.cpp)
add_executable(test_br_nottaken test_br_nottaken.cpp)
add_executable(test_br_taken test_br_taken.cpp)
add_executable(test_br_call test_br_call.cpp)
add_executable(test_br_call_noret test_br_call_noret.cpp)
add_executable(test_br_indirect test_br_indirect.cpp)
add_executable(test_br_indirect_call test_br_indirect_call.cpp)

add_executable(test_load test_load.cpp)
add_executable(test_store test_store.cpp)

add_library(pmu_test SHARED libtests.cpp)

add_executable(test_br_call2 test_br_call2.cpp)
add_executable(test_br_call2_noret test_br_call2_noret.cpp)

add_executable(test_load_pair test_load_pair.cpp)
add_executable(test_load_pair32 test_load_pair32.cpp)

add_executable(test_store_pair test_store_pair.cpp)
add_executable(test_store_pair32 test_store_pair32.cpp)

add_executable(test_load_pair_fp32 test_load_pair_fp32.cpp)
add_executable(test_load_pair_fp64 test_load_pair_fp64.cpp)
add_executable(test_load_pair_fp128 test_load_pair_fp128.cpp)

add_executable(test_store_pair_fp32 test_store_pair_fp32.cpp)
add_executable(test_store_pair_fp64 test_store_pair_fp64.cpp)
add_executable(test_store_pair_fp128 test_store_pair_fp128.cpp)

add_executable(test_load_fp32 test_load_fp32.cpp)
add_executable(test_load_fp64 test_load_fp64.cpp)
add_executable(test_load_fp128 test_load_fp128.cpp)

add_executable(test_store_fp32 test_store_fp32.cpp)
add_executable(test_store_fp64 test_store_fp64.cpp)
add_executable(test_store_fp128 test_store_fp128.cpp)
