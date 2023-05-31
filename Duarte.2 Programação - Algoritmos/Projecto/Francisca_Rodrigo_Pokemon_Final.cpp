#include <iostream>
#include <string>

using namespace std;

class pokemon
{
public:
	string nome, tipo, atk, def, hp, apelido;
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
		cout << "Time to choose your starter Pokemon! \n\n  B: Bulbasaur \n  C: Charmander \n  S: Squirtle \n\nChoose your starter: ";
		cin >> poke;
		cout << endl;

		switch (poke)
		{

		case 'B':
		case 'b':
			cout << "Do you want to choose Bulbasaur? ";
			cin >> A;

			switch (A)
			{
			case 'Y':
			case 'y':

				system("cls");
				cout << logo << endl;
				cout << endl;
				cout << "Congratulations! Your starter is Bulbasaur! " << endl;

				myObj.nome = "Bulbasaur";
				myObj.tipo = "Grass/Poison";
				myObj.atk = "118";
				myObj.def = "111";
				myObj.hp = "128";

				cout << endl;
				cout << "  Name: " << myObj.nome << endl;
				cout << "  Type: " << myObj.tipo << endl;
				cout << "  Attack: " << myObj.atk << endl;
				cout << "  Defense: " << myObj.def << endl;
				cout << "  HP: " << myObj.hp << endl;
				cout << endl;

				cout << "Do you want to give it a name? ";
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

				system("cls");
				cout << logo << endl;
				cout << endl;
				cout << "Congratulations! Your starter is Charmander! " << endl;

				myObj.nome = "Charmander";
				myObj.tipo = "Fire";
				myObj.atk = "116";
				myObj.def = "93";
				myObj.hp = "118";

				cout << endl;
				cout << "  Name: " << myObj.nome << endl;
				cout << "  Type: " << myObj.tipo << endl;
				cout << "  Attack: " << myObj.atk << endl;
				cout << "  Defense: " << myObj.def << endl;
				cout << "  HP: " << myObj.hp << endl;
				cout << endl;

				cout << "Do you want to give it a name? ";
				cin >> B;
				cout << endl;

				if (B == 'Y' || B == 'y')
				{
					cout << "What do you want to call it? ";
					cin >> N;
					cout << endl;
					cout << "Your Charmander is called " << N << "!";
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

		case 'S':
		case 's':

			cout << "Do you want to choose Squirtle? ";
			cin >> A;
			cout << endl;
			

			switch (A)
			{
			case 'Y':
			case 'y':

				system("cls");
				cout << logo << endl;
				cout << endl;
				cout << "Congratulations! Your starter is Squirtle! " << endl;

				myObj.nome = "Squirtle";
				myObj.tipo = "Water";
				myObj.atk = "94";
				myObj.def = "121";
				myObj.hp = "127";

				cout << endl;
				cout << "  Name: " << myObj.nome << endl;
				cout << "  Type: " << myObj.tipo << endl;
				cout << "  Attack: " << myObj.atk << endl;
				cout << "  Defense: " << myObj.def << endl;
				cout << "  HP: " << myObj.hp << endl;
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

		case 'P':
		case 'p':

			system("cls");
			cout << endl;

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

			myObj.nome = "Pikachu";
			myObj.tipo = "Electric";
			myObj.atk = "112";
			myObj.def = "96";
			myObj.hp = "111";

			cout << endl;
			cout << "  Name: " << myObj.nome << endl;
			cout << "  Type: " << myObj.tipo << endl;
			cout << "  Attack: " << myObj.atk << endl;
			cout << "  Defense: " << myObj.def << endl;
			cout << "  HP: " << myObj.hp << endl;
			cout << endl;

			cout << "Do you want to give it a name? ";
			cin >> A;

			if (A == 'Y' || A == 'y')
			{
				cout << endl;
				cout << "What do you want to call it? ";
				cin >> N;
				cout << endl;
				cout << "Your Pikachu is called " << N << "!";
				myObj.apelido = N;
			}
			else
			{
				myObj.apelido = "Pikachu";
			}

			cout << R"(
  ,..__
  |  _  `--._                                  _.--"""`.
  |   |._    `-.        __________         _.-'    ,|' |
  |   |  `.     `-..--""_.        `""-..,-'      ,' |  |
  L   |    `.        ,-'                      _,'   |  |
   .  |     ,'     ,'            .           '.     |  |
   |  |   ,'      /               \            `.   |  |
   |  . ,'      ,'                |              \ /  j
   `   "       ,                  '               `   /
    `,         |                ,'                  '+
    /          |             _,'                     `
   /     .-"""'L          ,-' \  ,-'""""`-.           `
  j    ,' ,.+--.\        '    ',' ,.,-"--._`.          \
  |   / .'  L    `.        _.'/ .'  |      \ \          .
 j   | | `--'     |`+-----'  . j`._,'       L |         |
 |   L .          | |        | |            | |         |
 |   `\ \        / j         | |            | |         |
 |     \ `-.._,.- /           . `         .'  '         |
 l      `-..__,.-'             `.`-.....-' _.'          '
 '                               `-.....--'            j
  .                  -.....                            |
   L                  `---'                            '
    \                                                 /
     ` \                                        ,   ,'
      `.`.    |                        /      ,'   .
        . `._,                        |     ,'   .'
         `.                           `._.-'  ,-'
    _,-""""`-,                             _,'"-.._
  ,'          `-.._                     ,-'        `.
 /             _,' `"-..___     _,..--"`.            `.
|         _,.-'            `"""'         `-._          \
`-....---'                                   `-.._      |
                                                  `--...' 
			)" << "\n";
			return 0;
		}
	}
	return 0;
}