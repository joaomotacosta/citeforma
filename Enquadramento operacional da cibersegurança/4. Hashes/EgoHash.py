import hashlib

# Carregar a lista de hashes
with open('hashes.txt', 'r') as f:
    hashes = [line.strip() for line in f]

# Carregar a rainbow table
rainbow_table = {}
with open('rainbow_table.txt', 'r') as f:
    for line in f:
        password, new_password, encrypted_password = line.strip().split(':')
        rainbow_table[encrypted_password] = password

# Procurar as hashes na rainbow table
for hash in hashes:
    if hash in rainbow_table:
        print(f"Ego encontrou {rainbow_table[hash]} para a hash {hash}.")
    else:
        print(f"Ego não encontrou nada para a hash {hash}.")