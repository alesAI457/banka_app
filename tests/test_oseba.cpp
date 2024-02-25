#include <iostream>
#include <gtest/gtest.h>

#include "Oseba.hpp"

TEST(OsebaTest, GetIdOseba)
{
    Oseba oseba{"Marko", "Polo", 3};

    EXPECT_EQ(oseba.getId(), 3);
}

TEST(OsebaTest, IzpisiPodatkeTest) {
    // Ustvarimo objekt razreda Oseba za testiranje
    Oseba oseba{"Marko", "Polo", 3};
/*
    // Pričakovani rezultat
    std::stringstream expected_output;
    expected_output << "ID: 3, Ime: Marko, Priimek: Polo" << std::endl;

    // Izvedemo metodo za izpis podatkov
    std::stringstream actual_output;
    oseba.izpisiPodatke();
    actual_output << testing::internal::GetCapturedStdout();

    // Preverimo, ali je izhod pravilen
    EXPECT_EQ(expected_output.str(), actual_output.str());
*/
}
