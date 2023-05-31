#include <iostream>
#include <locale>

using namespace std;

int main()
{
setlocale(LC_ALL, "");
 char op;
 int mul1, mul2, mul3, cont, tab1, tab2;
 cout << "Multiplos    M" << endl;
 cout << endl;
 cout << "Tabuada      T" << endl;
 cout << ""<< endl;
 cout << "Sair:        S" << endl;
 cin >> op;
 switch(op)
 {
 case 'M':
 case 'm':
    cout << "Opção selecionada: Multiplos"<<endl;
    cout << "Indique o número: ";
    cin >> mul1;
    cout << "Indique o número de vezes que quer multiplicar: ";
    cin >> mul2;
    cont = 1;
 do {
    mul3 = mul1 * cont;
    cout << mul1 << " x " << cont << " = " << mul3 << "\n";
    cont++ ;
    } while (cont <= mul2);
 break;
 case 'T':
 case 't':
    cout << "Opção selecionada: Tabuada"<<endl;
    cout << "Indique o número do qual quer ver a tabuada: ";
    cin >> tab1;
    cont = 1;
do {
    tab2 = tab1 * cont;
    cout << tab1 << " x " << cont << " = " << tab2 << "\n";
    cont++ ;
    } while (cont <= 10);
 break;
 case 'S':
 case 's':
 break;
 default:
 cout << "Opção inválida"<<endl;
 }
 return 0;
}