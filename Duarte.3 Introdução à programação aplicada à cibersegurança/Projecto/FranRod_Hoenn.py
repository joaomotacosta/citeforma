import os
import time

# Limpar o ecrã para o utilizador
os.system('clear' if os.name == 'posix' else 'cls')

# Ask user to select preferred language
language = input("Choose your language // Escolhe a tua língua: ").lower()

# Run the appropriate Python script based on user's choice
if language in ['português', 'pt', 'portugues']:
    print()
    print("Escolheste Português.")
    time.sleep(2)
    os.system('python FranRod_Hoenn-PT.py')
elif language in ['english', 'en', 'eng', 'ingles']:
    print()
    print("You have chosen English.")
    time.sleep(2)
    os.system('python FranRod_Hoenn-EN.py')
else:
    print()
    print("So you have chosen... DEATH.")
    time.sleep(5)
    os.system('clear' if os.name == 'posix' else 'cls')
    print("Hello there.")
    time.sleep(1)
    os.system('clear' if os.name == 'posix' else 'cls')
    print("Invalid input // Escolha inválida.")