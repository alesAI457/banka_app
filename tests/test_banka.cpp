#include <gtest/gtest.h>
#include "Banka.hpp"

// Test za metodo pridobiStanje() razreda Banka
TEST(BankaTest, PridobiStanjeTest) {
    Banka banka;
    banka.dodajKomitenta(Oseba("Marko", "Polo", 1));
    EXPECT_DOUBLE_EQ(0.0, banka.pridobiStanje(1));

    // Dodajte dodatne teste po potrebi
}

// Dodajte druge teste za razred Banka po potrebi

#if 0
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
#endif
