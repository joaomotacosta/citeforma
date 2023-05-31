#include <iostream>
#include <stack>

using namespace std;

int main() {

    stack <string> cartas;

    cartas.push("Rei de Copas");
    cartas.push("Rei de Espadas");
    cartas.push("Rei de Ouros");
    cartas.push("Rei de Paus");

    if(cartas.empty()) {
        cout << "Baralho vazio\n\n";
    }else{
        cout << "Baralho com cartas\n\n";
    }

    cout << "Tamanho do baralho: " << cartas.size() << "\n";
    cout << "Carta de cima: " << cartas.top() << "\n";

    cartas.pop();
    cartas.pop();

    cout << "Nova carta de cima: " << cartas.top() << "\n";

    return 0;

}