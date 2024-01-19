#include <iostream>
#include "Oseba.hpp"

Oseba::Oseba(std::string ime, std::string priimek, int id) : ime(ime), priimek(priimek), id(id) 
{}

Oseba::~Oseba()
{}

int Oseba::getId() const 
{
    return id;
}

void Oseba::izpisiPodatke() const 
{
    std::cout << "ID: " << id << ", Ime: " << ime << ", Priimek: " << priimek << std::endl;
}
