#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

int main() {

    double nota1, nota2, media;

    cout << fixed << setprecision(2);
    cout << "Qual é a primeira nota? ";
    cin >> nota1;
    cout << fixed << setprecision(2);
    cout << "Qual é a segunda nota? ";
    cin >> nota2;

    media = (nota1 + nota2) / 2;
    cout << "A media de " << nota1 << "e" << nota2 << "é" << media << endl;
}