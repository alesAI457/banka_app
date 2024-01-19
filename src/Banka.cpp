#include <iostream>
#include "Banka.hpp"

void Banka::dodajKomitenta(const Oseba& komitent) {
    komitenti.push_back(komitent);
    racuni.push_back(0); // Začetni znesek na računu je 0
}

double Banka::pridobiStanje(int id) const {
    for (size_t i = 0; i < komitenti.size(); ++i) {
        if (komitenti[i].getId() == id) {
            return racuni[i];
        }
    }
    std::cerr << "Napaka: Komitent z ID " << id << " ni bil najden." << std::endl;
    return -1; // V primeru napake vrnemo negativno vrednost
}

void Banka::opraviPolog(int id, double znesek) {
    for (size_t i = 0; i < komitenti.size(); ++i) {
        if (komitenti[i].getId() == id) {
            racuni[i] += znesek;
            std::cout << "Polog uspešno opravljen. Novo stanje na računu: " << racuni[i] << std::endl;
            return;
        }
    }
    std::cerr << "Napaka: Komitent z ID " << id << " ni bil najden." << std::endl;
}

void Banka::opraviDvig(int id, double znesek) {
    for (size_t i = 0; i < komitenti.size(); ++i) {
        if (komitenti[i].getId() == id) {
            if (racuni[i] >= znesek) {
                racuni[i] -= znesek;
                std::cout << "Dvig uspešno opravljen. Novo stanje na računu: " << racuni[i] << std::endl;
            } else {
                std::cerr << "Napaka: Na računu ni dovolj sredstev za dvig." << std::endl;
            }
            return;
        }
    }
    std::cerr << "Napaka: Komitent z ID " << id << " ni bil najden." << std::endl;
}
