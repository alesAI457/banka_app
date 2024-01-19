#ifndef BANKOMAT_H
#define BANKOMAT_H

#include "Banka.hpp"

class Bankomat {
public:
    // Konstruktor, ki zahteva referenco na banko
    Bankomat(Banka& banka);

    // Metoda za prijavo in odjavo komitenta na bankomat
    bool prijava(int id);
    void odjava();

    // Metode za uporabo storitev banke
    void prikaziStanje() const;
    void izvediPolog(double znesek);
    void izvediDvig(double znesek);

private:
    Banka& banka; // Referenca na banko
    int trenutniKomitentId; // ID trenutno prijavljenega komitenta
};

#endif // BANKOMAT_H
