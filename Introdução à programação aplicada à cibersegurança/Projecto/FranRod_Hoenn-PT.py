import os
import random
import time

# Limpar o ecrã para o utilizador
os.system('clear' if os.name == 'posix' else 'cls')

# Função para randomizar as stats de cada Pokémon
def generate_iv():
    return random.randint(0, 31)

# Base stats dos starters da região de Hoenn
treecko_base = {'Type': 'Erva', 'HP': 40, 'Attack': 45, 'Defense': 35, 'Special Attack': 65, 'Special Defense': 55, 'Speed': 70}
torchic_base = {'Type': 'Fogo', 'HP': 45, 'Attack': 60, 'Defense': 40, 'Special Attack': 70, 'Special Defense': 50, 'Speed': 45}
mudkip_base = {'Type': 'Água', 'HP': 50, 'Attack': 70, 'Defense': 50, 'Special Attack': 50, 'Special Defense': 50, 'Speed': 40}
pikachu_base = {'Type': 'Elétrico', 'HP': 35, 'Attack': 55, 'Defense': 30, 'Special Attack': 50, 'Special Defense': 40, 'Speed': 90}

# Função para gerar as stats de cada Pokémon
def generate_starter(base_stats):
    stats = {}
    stats['Tipo'] = base_stats['Type']
    stats['Ataque'] = (2 * base_stats['Attack'] + generate_iv()) // 3
    stats['Defesa'] = (2 * base_stats['Defense'] + generate_iv()) // 3
    stats['Ataque Especial'] = (2 * base_stats['Special Attack'] + generate_iv()) // 3
    stats['Defesa Especial'] = (2 * base_stats['Special Defense'] + generate_iv()) // 3
    stats['Velocidade'] = (2 * base_stats['Speed'] + generate_iv()) // 3
    stats['HP'] = (2 * base_stats['HP'] + generate_iv()) // 3
    return stats

input("Pressiona 'A' para começar a tua aventura Pokémon! ")
os.system('clear' if os.name == 'posix' else 'cls')

# Monólogo do Professor Bétula
print("Olá e bem-vindo ao mundo de Pokémon! O meu nome é Professor Bétula.")
print()
input("Pressiona 'A' para continuar ")
os.system('clear' if os.name == 'posix' else 'cls')

print("Este mundo está habitado por criaturas chamadas Pokémon! Para alguns, os Pokémon são animais de estimação, enquanto outros usam os Pokémon para combater.")
print()
input("Pressiona 'A' para continuar ")
os.system('clear' if os.name == 'posix' else 'cls')

print("A tua própria aventura Pokémon está prestes a começar! Um mundo de sonhos e aventuras com Pokémon espera por ti. Vamos lá!")
print()
input("Pressiona 'A' para continuar ")
os.system('clear' if os.name == 'posix' else 'cls')

print("Tenho aqui três Pokémon para ti. Escolhe o teu parceiro!")
print()
input("Pressiona 'A' para continuar ")
os.system('clear' if os.name == 'posix' else 'cls')

# Apresentar as opções ao utilizador
print("Escolhe o teu Pokémon inicial:")
print()
print("Treecko - um Pokémon tipo Erva")
print("Torchic - um Pokémon tipo Fogo")
print("Mudkip - um Pokémon tipo Água")
print()


# Permitir ao utilizador escolher o seu Pokémon inicial
starter_name = ""
while starter_name not in ["treecko", "torchic", "mudkip", "pikachu"]:
    starter_name = input("Introduz o nome do Pokémon que queres escolher: ").lower()

# Verificar a escolha do utilizador e apresentar as estatísticas do Pokémon escolhido
if starter_name == "treecko":
    treecko = generate_starter(treecko_base)
    print()
    print("Escolheste o Treecko!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print(f"Estatísticas do Treecko:")
    print()
    for key, value in treecko.items():
        print(f"{key}: {value}")
elif starter_name == "torchic":
    torchic = generate_starter(torchic_base)
    print()
    print("Escolheste o Torchic!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print(f"Estatísticas do Torchic:")
    print()
    for key, value in torchic.items():
        print(f"{key}: {value}")
elif starter_name == "mudkip":
    mudkip = generate_starter(mudkip_base)
    print()
    print("Escolheste o Mudkip!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print(f"Estatísticas do Mudkip:")
    print()
    for key, value in mudkip.items():
        print(f"{key}: {value}")
elif starter_name == "pikachu":
    pikachu = generate_starter(pikachu_base)
    print()
    print("Escolheste o Pikachu!")
    time.sleep(2)
    os.system('clear' if os.name == 'posix' else 'cls')
    print("Espera aí... És o Ash?")
    time.sleep(2)
    print()
    print("Wow, é ótimo finalmente conhecer-te! Mais uma vez, chegaste atrasado.")
    time.sleep(3)
    print()
    print(f"Estatísticas do Pikachu")
    print()
    for key, value in pikachu.items():
        print(f"{key}: {value}")
else:
    print()
    print("Escolha inválida, tenta novamente.")
    exit()

# Allow the user to nickname their starter Pokemon
print()
nickname = input(f"Gostarias de dar uma alcunha ao teu {starter_name}? ").lower()
if nickname == "sim":
    print()
    nickname = input("O que gostarias de chamar o teu parceiro? ")
    print()
    print(f"Parabéns, o teu {starter_name} agora chama-se '{nickname}'.")
else:
    nickname = starter_name
    print()
    print(f"O teu {starter_name} vai ficar como '{nickname}'.")