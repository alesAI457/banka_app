#include <gtest/gtest.h>
#include "Banka.hpp"

// Test za metodo dodajKomitenta(const Oseba& komitent), razreda Banka
TEST(BankaTest, DodajKomitentaTest)
{
    Banka banka;

    Oseba komitent("Janez", "Novak", 1);

    // Onemogočanje izpisa std::cout
    testing::internal::CaptureStdout();

    banka.dodajKomitenta(komitent);

    ASSERT_FALSE(banka.pridobiStanje(1) == -1);
    ASSERT_TRUE(banka.pridobiStanje(2) == -1);
}


// Test za metodo pridobiStanje(int id) razreda Banka
TEST(BankaTest, PridobiStanjeTest) {
    Banka banka;
    banka.dodajKomitenta(Oseba("Marko", "Polo", 1));
    EXPECT_DOUBLE_EQ(0.0, banka.pridobiStanje(1));
}

// Test za metodo opraviPolog(int id, double znesek) rezreda Banka
TEST(BankaTest, OpraviPologTest)
{
    Banka banka;

    Oseba komitent("Janez", "Novak", 1);

    // Onemogočanje izpisa std::cout
    testing::internal::CaptureStdout();

    banka.dodajKomitenta(komitent);

    banka.opraviPolog(1, 100.0);

    EXPECT_DOUBLE_EQ(100.0, banka.pridobiStanje(1));
}

TEST(BankaTest, OpraviDvigTest)
{
    Banka banka;

    Oseba komitent("Janez", "Novak", 1);

    // Onemogočanje izpisa std::cout
    testing::internal::CaptureStdout();

    banka.dodajKomitenta(komitent);

    banka.opraviPolog(1, 100.0);

    banka.opraviDvig(1, 20.0);

    EXPECT_DOUBLE_EQ(80.0, banka.pridobiStanje(1));
}