#!/bin/bash

cd ..
# Base_DIR = /home/ales/Programiranje/googleTest/banka_app
BASE_DIR="$(pwd)"

# Koraki 1-2: Namestite lcov in zgradite projekt s podporo za analizo pokritosti
if ! command -v lcov &> /dev/null
then
    echo "lcov ni nameščen. Nameščam lcov..."
    sudo apt-get install lcov
    echo "lcov je bil uspešno nameščen."
fi

# Ustvari mapo report, če ne obstaja v mapi tests
cd tests
if [ ! -d "report" ]; then
    mkdir report
fi
cd ..

# Če zaženemo skripto z ukazom run: ./code_coverage.sh -run
if [ "$1" == "-run" ]; then

    # Ustvari mapo build, če ne obstaja
    if [ ! -d "build" ]; then
        mkdir build
    fi

    cd build
    #cmake -DCMAKE_BUILD_TYPE=Debug .
    cmake -S "$BASE_DIR"
    make clean
    make

    # Korak 3: Zaženite enote (testi)
    ./tests/tests

    #cd ../tests
    cd ../
fi

# Odstrani zadnjo komponento iz poti (/test)
GCDA_FILES_PATH="${BASE_DIR}/build/CMakeFiles/banka_lib.dir/src"

# Korak 4: Zbiranje podatkov o pokritosti z lcov
lcov --capture --directory $GCDA_FILES_PATH --output-file ${BASE_DIR}/tests/report/coverage.info -exclude '/usr/*' -exclude '*/lib/*' -exclude '*/10/*'

# Korak 5: Filtriranje nepotrebnih datotek
#lcov --remove coverage.info '/usr/*' --output-file report/coverage.info

# Korak 6: Generiranje HTML izhoda
genhtml ${BASE_DIR}/tests/report/coverage.info --output-directory ${BASE_DIR}/tests/report/coverage_html

# Odprite poročilo v privzetem brskalniku
#xdg-open coverage_html/index.html