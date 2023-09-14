cmake_minimum_required(VERSION 3.15)

project(fibonacci CXX)

find_package(fmt REQUIRED)
find_package(range-v3 REQUIRED)
find_package(cxxopts REQUIRED)
find_package(z3 REQUIRED)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 17)

add_executable(fibo main.cxx)

target_link_libraries(
  fibo
  PRIVATE
    fmt::fmt
    range-v3::range-v3
    cxxopts::cxxopts
)

add_executable(z3Test z3Test.cxx)
target_link_libraries(
  z3Test
  PRIVATE
    z3::libz3
)
