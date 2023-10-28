#include <iostream>
#include <iomanip>
#include <string>

using namespace std;
int main() 
{
	int idade;
	double salario, altura;
	char genero;
	string nome;
	
	cout << "Idade? \n";
	cin >> idade;
	cout << "Salario? \n";
    cin >> salario;
    cout << "Altura? \n";
    cin >> altura;
    cout << "Genero? (M/F)? \n";
    cin >> genero;
    cout << "Nome? \n";
    cin >> nome;
	

	
	cout << fixed << setprecision(2);
	cout << "\nIDADE = " << idade;
	cout << "\nSALARIO = " << salario;
	cout << "\nALTURA = " << altura ;
	cout << "\nGENERO = " << genero;
	cout << "\nNOME = " << nome;

return 0;
}