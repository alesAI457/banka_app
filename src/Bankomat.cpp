#include <iostream>
#include "Bankomat.hpp"

Bankomat::Bankomat(Banka& banka) : banka(banka), trenutniKomitentId(-1) {}

bool Bankomat::prijava(int id) {
    if (trenutniKomitentId == -1) {
        if (banka.pridobiStanje(id) != -1) {
            trenutniKomitentId = id;
            std::cout << "Uspešna prijava. Dobrodošel, komitent " << id << "!" << std::endl;
            return true;
        } else {
            std::cerr << "Napaka: Komitent z ID " << id << " ni bil najden." << std::endl;
        }
    } else {
        std::cerr << "Napaka: Drug komitent je že prijavljen. Opravite odjavo pred prijavo novega komitenta." << std::endl;
    }
    return false;
}

void Bankomat::odjava() {
    if (trenutniKomitentId != -1) {
        std::cout << "Uspešna odjava. Hvala, ker ste uporabljali naše storitve, komitent " << trenutniKomitentId << "!" << std::endl;
        trenutniKomitentId = -1;
    } else {
        std::cerr << "Napaka: Niste prijavljeni. Opravite prijavo pred odjavo." << std::endl;
    }
}

void Bankomat::prikaziStanje() const {
    if (trenutniKomitentId != -1) {
        double stanje = banka.pridobiStanje(trenutniKomitentId);
        if (stanje != -1) {
            std::cout << "Stanje na računu: " << stanje << std::endl;
        }
    } else {
        std::cerr << "Napaka: Niste prijavljeni. Opravite prijavo pred uporabo storitev banke." << std::endl;
    }
}

void Bankomat::izvediPolog(double znesek) {
    if (trenutniKomitentId != -1) {
        banka.opraviPolog(trenutniKomitentId, znesek);
    } else {
        std::cerr << "Napaka: Niste prijavljeni. Opravite prijavo pred uporabo storitev banke." << std::endl;
    }
}

void Bankomat::izvediDvig(double znesek) {
    if (trenutniKomitentId != -1) {
        banka.opraviDvig(trenutniKomitentId, znesek);
    } else {
        std::cerr << "Napaka: Niste prijavljeni. Opravite prijavo pred uporabo storitev banke." << std::endl;
    }
}
