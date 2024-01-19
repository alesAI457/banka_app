#include <iostream>

#include "Oseba.hpp"
#include "Banka.hpp"

int main() {
    // Ustvarimo nekaj komitentov
    Oseba komitent1("Janez", "Novak", 1);
    Oseba komitent2("Ana", "Kovac", 2);

    // Ustvarimo banko
    Banka banka;

    // Dodamo komitente v banko
    banka.dodajKomitenta(komitent1);
    banka.dodajKomitenta(komitent2);

    // Izpišemo informacije o komitentih
    komitent1.izpisiPodatke();
    komitent2.izpisiPodatke();

    // Opravimo nekaj transakcij
    banka.opraviPolog(1, 500.0);
    banka.opraviDvig(2, 200.0);

    // Pridobimo stanje na računu za določenega komitenta
    double stanje1 = banka.pridobiStanje(1);
    double stanje2 = banka.pridobiStanje(2);

    std::cout << "Stanje na računu za komitenta 1: " << stanje1 << std::endl;
    std::cout << "Stanje na računu za komitenta 2: " << stanje2 << std::endl;

    return 0;
}
