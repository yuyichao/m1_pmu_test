cmake_minimum_required(VERSION 3.10)

project(m1_pmu_test)

set(CMAKE_C_FLAGS "-O3 -Wall -Wextra -Wno-sign-compare -Wno-unused-parameter ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-O3 -Wall -Wextra -Wno-sign-compare -Wno-unused-parameter ${CMAKE_CXX_FLAGS}")
set(CMAKE_CXX_STANDARD 17)
add_definitions(-D_GNU_SOURCE -UNDEBUG)

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
