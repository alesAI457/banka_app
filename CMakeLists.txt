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

# Google Test
add_subdirectory(tests)