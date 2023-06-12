import os
import random
import time

# Clear screen to the user // Limpar o ecrã para o utilizador
os.system('clear' if os.name == 'posix' else 'cls')

# Function to randomize each Pokémon's base stats // Função para randomizar as stats de cada Pokémon
def generate_iv():
    return random.randint(0, 31)

# Hoenn starter Pokémon base stats // Base stats dos starters da região de Hoenn
treecko_base = {'Type': 'Grass', 'HP': 40, 'Attack': 45, 'Defense': 35, 'Special Attack': 65, 'Special Defense': 55, 'Speed': 70}
torchic_base = {'Type': 'Fire', 'HP': 45, 'Attack': 60, 'Defense': 40, 'Special Attack': 70, 'Special Defense': 50, 'Speed': 45}
mudkip_base = {'Type': 'Water', 'HP': 50, 'Attack': 70, 'Defense': 50, 'Special Attack': 50, 'Special Defense': 50, 'Speed': 40}
pikachu_base = {'Type': 'Electric', 'HP': 35, 'Attack': 55, 'Defense': 30, 'Special Attack': 50, 'Special Defense': 40, 'Speed': 90}

# Function to generate starter Pokémon stats // Função para gerar as stats de cada Pokémon
def generate_starter(base_stats):
    stats = {}
    stats['Type'] = base_stats['Type']
    stats['Attack'] = (2 * base_stats['Attack'] + generate_iv()) // 3
    stats['Defense'] = (2 * base_stats['Defense'] + generate_iv()) // 3
    stats['Special Attack'] = (2 * base_stats['Special Attack'] + generate_iv()) // 3
    stats['Special Defense'] = (2 * base_stats['Special Defense'] + generate_iv()) // 3
    stats['Speed'] = (2 * base_stats['Speed'] + generate_iv()) // 3
    stats['HP'] = (2 * base_stats['HP'] + generate_iv()) // 3
    return stats

input("Press 'A' to start your Pokémon journey! ")
os.system('clear' if os.name == 'posix' else 'cls')

# Monólogo do Professor Birch // Professor Birch monologue
print("Hello there! Welcome to the world of Pokémon! My name is Professor Birch.")
print()
input("Press 'A' to continue ")
os.system('clear' if os.name == 'posix' else 'cls')

print("This world is inhabited by creatures called Pokémon! For some people, Pokémon are pets. Others use them for battles.")
print()
input("Press 'A' to continue ")
os.system('clear' if os.name == 'posix' else 'cls')

print("Your very own Pokémon adventure is about to unfold! A world of dreams and adventures with Pokémon awaits! Let's go!")
print()
input("Press 'A' to continue ")
os.system('clear' if os.name == 'posix' else 'cls')

print("I have three Pokémon here. You can choose one to be your partner.")
print()
input("Press 'A' to continue ")
os.system('clear' if os.name == 'posix' else 'cls')

# Present starter options // Apresentar as opções ao utilizador
print("Please choose one of the following:")
print()
print("Treecko - a Grass-type Pokémon")
print("Torchic - a Fire-type Pokémon")
print("Mudkip - a Water-type Pokémon")
print()


# Allow the user to choose their starter Pokemon // Escolha do utilizador
starter_name = ""
while starter_name not in ["treecko", "torchic", "mudkip", "pikachu"]:
    starter_name = input("Enter the name of the Pokémon you want to choose: ").lower()

# Check user's choice and present stats of chosen Pokémon
if starter_name == "treecko":
    treecko = generate_starter(treecko_base)
    print()
    print("You have chosen Treecko!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print(f"Treecko stats:")
    print()
    for key, value in treecko.items():
        print(f"{key}: {value}")
elif starter_name == "torchic":
    torchic = generate_starter(torchic_base)
    print()
    print("You have chosen Torchic!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print(f"Torchic stats:")
    print()
    for key, value in torchic.items():
        print(f"{key}: {value}")
elif starter_name == "mudkip":
    mudkip = generate_starter(mudkip_base)
    print()
    print("You have chosen Mudkip!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print(f"Mudkip stats:")
    print()
    for key, value in mudkip.items():
        print(f"{key}: {value}")
elif starter_name == "pikachu":
    pikachu = generate_starter(pikachu_base)
    print()
    print("You have chosen Pikachu!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print("Hey, wait a minute... are you Ash?")
    time.sleep(2)
    print()
    print("Wow, it's great to finally meet you! But you're a little late.")
    time.sleep(3)
    print()
    print(f"Pikachu stats:")
    print()
    for key, value in pikachu.items():
        print(f"{key}: {value}")
else:
    print()
    print("Invalid choice, please try again.")
    exit()

# Allow the user to nickname their starter Pokemon
print()
nickname = input(f"Would you like to give your {starter_name} a nickname? ").lower()
if nickname == "yes":
    print()
    nickname = input("What would you like to nickname your starter Pokémon? ")
    print()
    print(f"Congratulations! Your {starter_name} will be known as '{nickname}'.")
else:
    nickname = starter_name
    print()
    print(f"Your {starter_name} will be known as '{nickname}'.")