cmake_minimum_required(VERSION 3.22)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

project(benchmarks LANGUAGES CXX)

set(BENCHMARK_ENABLE_TESTING OFF CACHE BOOL "")
find_package(benchmark REQUIRED)

add_executable(bench ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)

target_link_libraries(bench PUBLIC benchmark::benchmark)
