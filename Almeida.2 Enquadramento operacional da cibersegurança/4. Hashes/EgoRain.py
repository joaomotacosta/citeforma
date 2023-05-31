import random
from Crypto.Cipher import AES

# Definir os caracteres para a geração das palavras-passe
charset = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789?!'

# Gerar a lista de palavras-passe com quatro caracteres
passwords = []
for i in range(len(charset)):
    for j in range(len(charset)):
        for k in range(len(charset)):
            for l in range(len(charset)):
                password = charset[i] + charset[j] + charset[k] + charset[l]
                passwords.append(password)

# Repetir cada palavra-passe para que esta tenha 16 caracteres
passwords_16 = [password*4 for password in passwords]

# Para cada palavra-passe de 16 caracteres, escolher quatro caracteres aleatórios
new_passwords = []
for password in passwords_16:
    new_password = ''
    for i in range(0, len(password), 4):
        new_password += random.choice(charset) + random.choice(charset) + random.choice(charset) + random.choice(charset)
    new_passwords.append(new_password)

# Encriptar cada palavra-passe utilizando a palavra-passe de 16 caracteres como a chave
encrypted_passwords = []
for password in passwords_16:
    cipher = AES.new(password.encode(), AES.MODE_ECB)
    encrypted_passwords.append(cipher.encrypt(password.encode()))

# Guardar a palavra-passe inicial e final para um ficheiro
with open('rainbow_table.txt', 'w') as f:
    for i in range(len(passwords)):
        f.write(passwords[i] + ':' + new_passwords[i] + ':' + encrypted_passwords[i].hex() + '\n')