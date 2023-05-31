#include <iostream>
#include <string>

using namespace std;

class pokemon
{
public:
	string nome, apelido, tipo;
};

int main()
{

	char poke, A, B;
	string N;

	pokemon myObj;

	system("cls");


	string logo = R"(
		                  ,'\
    _.----.        ____         ,'  _\   ___    ___     ____
_,-'       `.     |    |  /`.   \,-'    |   \  /   |   |    \  |`.
\      __    \    '-.  | /   `.  ___    |    \/    |   '-.   \ |  |
 \.    \ \   |  __  |  |/    ,','_  `.  |          | __  |    \|  |
   \    \/   /,' _`.|      ,' / / / /   |          ,' _`.|     |  |
    \     ,-'/  /   \    ,'   | \/ / ,`.|         /  /   \  |     |
     \    \ |   \_/  |   `-.  \    `'  /|  |    ||   \_/  | |\    |
      \    \ \      /       `-.`.___,-' |  |\  /| \      /  | |   |
       \    \ `.__,'|  |`-._    `|      |__| \/ |  `.__,'|  | |   |
        \_.-'       |__|    `-._ |              '-.|     '-.| |   |
                                `'                            '-._|
	)";

	cout << logo << endl;
	cout << endl;
	cout << "Hello there! Welcome to the world of Pokemon!\n";
	cin.get();

	cout << "My name is Prof. Oak, but some people call me the Pokemon Professor.\n";
	cin.get();

	cout << "This world is inhabited by creatures called Pokemon!\n";
	cin.get();

	cout << "For some people, Pokemon are pets. Others use them for fights.\n";
	cin.get();

	cout << "Are you ready to go on this adventure?\n";
	cin.get();
	system("pause");

	for (;;)
	{
		system("cls");
		cout << logo << endl;
		cout << endl;
		cout << "Time to choose your starter Pokemon! \n\n  S: Squirtle \n  B: Bulbasaur \n  C: Charmander \n\nChoose your starter: ";
		cin >> poke;
		cout << endl;

		switch (poke)
		{

		case 'S':
		case 's':

			cout << "Do you want to choose Squirtle? ";
			cin >> A;
			cout << endl;

			switch (A)
			{
			case 'Y':
			case 'y':
				cout << "Congratulations! Your starter is Squirtle! " << endl;

				myObj.tipo = "Water";
				myObj.nome = "Squirtle";

				cout << endl;
				cout << "Type: " << myObj.tipo << endl;
				cout << endl;
				cout << "Name: " << myObj.nome << endl;
				cout << endl;

				cout << "Do you want to give it a name? ";
				cin >> B;
				cout << endl;
				if (B == 'Y' || B == 'y')
				{
					cout << "What do you want to call it? ";
					cin >> N;
					cout << endl;
					cout << "Your Squirtle is called " << N << "!";
					myObj.apelido = N;
				}
				else
				{
					myObj.apelido = "Squirtle";
				}
				break;
			}
			return 0;

		case 'B':
		case 'b':
			cout << "Do you want to choose Bulbasaur? ";
			cin >> A;

			switch (A)
			{
			case 'Y':
			case 'y':
				cout << "Congratulations! Your starter is Bulbasaur! " << endl;

				myObj.tipo = "Grass/Poison";
				myObj.nome = "Bulbasaur";

				cout << endl;
				cout << "Type: " << myObj.tipo << endl;
				cout << endl;
				cout << "Name: " << myObj.nome << endl;
				cout << endl;

				cout << "Do you want to give it a name? Y/N \n";
				cin >> B;
				cout << endl;
				if (B == 'Y' || B == 'y')
				{
					cout << "What do you want to call it? ";
					cin >> N;
					cout << endl;
					cout << "Your Bulbasaur is called " << N << "!";
					cout << endl;
					myObj.apelido = N;
				}
				else
				{
					myObj.apelido = "Bulbasaur";
				}
				break;
			}
			return 0;

		case 'C':
		case 'c':

			cout << "Do you want to choose Charmander? ";
			cin >> A;
			cout << endl;

			switch (A)
			{
			case 'Y':
			case 'y':
				cout << "Congratulations! Your starter is Charmander! " << endl;

				myObj.tipo = "Fire";
				myObj.nome = "Charmander";
				
				cout << endl;
				cout << "Type: " << myObj.tipo << endl;
				cout << endl;
				cout << "Name: " << myObj.nome << endl;
				cout << endl;

				cout << "Do you want to give it a name? Y/N \n ";
				cin >> B;
				if (B == 'Y' || B == 'y')
				{
					cout << "What do you want to call it? \n";
					cin >> N;
					cout << endl;
					cout << "Your Charmander is called " << N << "! \n";
					cout << endl;
					myObj.apelido = N;
				}
				else
				{
					myObj.apelido = "Charmander";
				}
				break;
			}
			return 0;

		case 'P':
		case 'p':

		std:
			cout << R"(
 $$$b  `---.__
  "$$b        `--.                          ___.---uuudP
   `$$b           `.__.------.__     __.---'      $$$$"              .
     "$b          -'            `-.-'            $$$"              .'|
       ".                                       d$"             _.'  |
         `.   /                              ..."             .'     |
           `./                           ..::-'            _.'       |
            /                         .:::-'            .-'         .'
           :                          ::''\          _.'            |
          .' .-.             .-.           `.      .'               |
          : /'$$|           .@"$\           `.   .'              _.-'
         .'|$u$$|          |$$,$$|           |  <            _.-'
         | `:$$:'          :$$$$$:           `.  `.       .-'
         :                  `"--'             |    `-.     \
        :##.       ==             .###.       `.      `.    `\
        |##:                      :###:        |        >     >
        |#'     `..'`..'          `###'        x:      /     /
         \                                   xXX|     /    ./
          \                                xXXX'|    /   ./
          /`-.                                  `.  /   /
         :    `-  ...........,                   | /  .'
         |         ``:::::::'       .            |<    `.
         |             ```          |           x| \ `.:``.
         |                         .'    /'   xXX|  `:`M`M':.
         |    |                    ;    /:' xXXX'|  -'MMMMM:'
         `.  .'                   :    /:'       |-'MMMM.-'
          |  |                   .'   /'        .'MMM.-'
          `'`'                   :  ,'          |MMM<
            |                     `'            |tbap\
             \                                  :MM.-'
              \                 |              .''
               \.               `.            /
                /     .:::::::.. :           /
               |     .:::::::::::`.         /
               |   .:::------------\       /
              /   .''               >::'  /
              `',:                 :    .'
                                   `:.:' 
		
		)" << '\n';

			cout << "Congratulations Ash wannabe! Your starter is Pikachu! " << endl;

			myObj.tipo = "Electric";
			myObj.nome = "Pikachu";

			cout << "Type: " << myObj.tipo << endl;
			cout << "Name: " << myObj.nome << endl;

			cout << "Do you want to give it a name? Y/N \n ";

			cin >> A;

			if (A == 'Y' || A == 'y')
			{
				cout << "What do you want to call it? \n ";
				cin >> N;
				cout << "Your Pikachu is called " << N << "! \n";
				myObj.apelido = N;
			}
			else
			{
				myObj.apelido = "Pikachu";
			}
			return 0;
		}
	}
	return 0;
}