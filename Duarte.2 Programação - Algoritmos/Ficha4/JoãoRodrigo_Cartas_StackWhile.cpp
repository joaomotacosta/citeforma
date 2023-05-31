#include <iostream>
#include <stack>

using namespace std;

int main() {

    stack <string> cartas;

    cartas.push("Rei de Copas");
    cartas.push("Rei de Espadas");
    cartas.push("Rei de Ouros");
    cartas.push("Rei de Paus");

    cout << "Tamanho do baralho: " << cartas.size() << "\n";
    
    while(!cartas.empty()) {
        cout << "Carta de cima: " << cartas.top() << "\n";
        cartas.pop();
    }
    
    return 0;
    
}