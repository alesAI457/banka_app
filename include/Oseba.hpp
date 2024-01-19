#ifndef OSEBA_HPP
#define OSEBA_HPP

#include <string>

class Oseba {
public:
    Oseba() = delete;
    //Oseba(std::string ime) = delete;
    //Oseba(std::string priimerk) = delete;
    //Oseba(std::string ime, std::string priimek) = delete;

    Oseba(std::string ime, std::string priimek, int id);

    ~Oseba();

    // Getter metoda za pridobivanje ID-ja osebe
    int getId() const;

    // Izpis informacij o osebi
    void izpisiPodatke() const;

private:
    std::string ime;
    std::string priimek;
    int id;
};

#endif