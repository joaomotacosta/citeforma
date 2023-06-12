#include <iostream>
#include <locale>


using namespace std;

int main() 

{
	setlocale(LC_ALL, "Portuguese");
    int num, ant, suc;

    cout << "Digite um numero: \n";
    cin >> num;
    ant = num - 1;
    suc = num + 1;
    
    cout << "O antecessor do número " << num << " é: " << ant <<"\n";
    cout << "O sucessor do número " << num << " é: " << suc <<"\n";

}