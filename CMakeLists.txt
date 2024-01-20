cmake_minimum_required(VERSION 3.0)

project(Banka VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)

# Dodajte izvorne datoteke v spremenljivko SOURCES
set(SOURCES
    src/Oseba.cpp
    src/Banka.cpp
    src/Bankomat.cpp
)

# Ustvarite knjižnico (lib) iz vaših izvornih datotek
add_library(banka_lib ${SOURCES})

# Nastavite pot za vključevanje
target_include_directories(banka_lib PUBLIC include)

# Ustvarite izvršljiv program in povežite knjižnico
add_executable(banka_app main.cpp)

# Povežite izvršljiv program z knjižnico
target_link_libraries(banka_app banka_lib)

# Google Test - namestitev in konfiguracija
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Izvorne datoteke za teste
set(TEST_SOURCES
    tests/test_banka.cpp
    tests/test_bankomat.cpp
    tests/test_main.cpp
)

# Izvršljiv program za teste
add_executable(tests ${TEST_SOURCES})

# Povežite izvršljiv program za teste z Google Test
target_link_libraries(tests ${GTEST_BOTH_LIBRARIES} banka_lib pthread)

# Dodajte testne cilje
enable_testing()
add_test(NAME unit_tests COMMAND tests)
