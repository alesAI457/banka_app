#ifndef BANKA_H
#define BANKA_H

#include "Oseba.hpp"
#include <vector>

class Banka {
public:
    // Dodajanje novega komitenta v banko
    void dodajKomitenta(const Oseba& komitent);

    // Pridobi stanje na računu za določenega komitenta
    double pridobiStanje(int id) const;

    // Opravi polog na račun določenega komitenta
    void opraviPolog(int id, double znesek);

    // Opravi dvig na računu določenega komitenta
    void opraviDvig(int id, double znesek);

private:
    std::vector<Oseba> komitenti;
    std::vector<double> racuni;
};

#endif // BANKA_H
