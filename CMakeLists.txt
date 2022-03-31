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
