cmake_minimum_required(VERSION 3.0)

project(Banka_Tests VERSION 1.0)

# Google Test - namestitev in konfiguracija
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -fprofile-arcs -ftest-coverage -O0 --coverage")

# Izvorne datoteke za teste
set(TEST_SOURCES
    test_banka.cpp
    test_bankomat.cpp
    test_oseba.cpp
    test_main.cpp
)

# Izvršljiv program za teste
add_executable(tests ${TEST_SOURCES})

# Povežite izvršljiv program za teste z Google Test
target_link_libraries(tests ${GTEST_BOTH_LIBRARIES} banka_lib pthread)

# Dodajte testne cilje
enable_testing()
add_test(NAME unit_tests COMMAND tests)
