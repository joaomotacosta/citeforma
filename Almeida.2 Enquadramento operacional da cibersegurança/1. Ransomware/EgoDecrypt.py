import os
import glob
import tkinter as tk
from tkinter import filedialog, messagebox
from cryptography.fernet import Fernet

# Pergunta ao utilizador qual é a pasta para decriptar
pasta = filedialog.askdirectory(title="Selecione a directoria encriptada")

# Ler a chave do ficheiro
with open("chave.key", "rb") as f:
    chave = f.read()

# Inicializar o Fernet com a chave
fernet = Fernet(chave)

# Loop para procurar todos os ficheiros na diretoria
for ficheiro in glob.iglob(pasta + "/**/*.*", recursive=True):

    # Verificar que o ficheiro termina em ".ego"
    if ficheiro.endswith(".ego"):

        # Juntar o caminho com o nome do ficheiro
        ego = os.path.join(pasta, ficheiro)
        
        # Ler o conteúdo do ficheiro encriptado
        with open(ego, "rb") as f:
            encriptado = f.read()
        
        # Tentar a decriptação do ficheiro
        try:
            decriptado = fernet.decrypt(encriptado)
        except:
            messagebox.showerror("Erro", "Falha ao decriptar o ficheiro " + ficheiro)
            continue
        
        # Remover a extensão ".ego" do nome do ficheiro
        new_ficheiro = ficheiro[:-4]
        
        # Juntar o caminho com o novo ficheiro
        new_caminho = os.path.join(pasta, new_ficheiro)
        
        # Escrever os dados decriptados para o ficheiro
        with open(new_caminho, "wb") as f:
            f.write(decriptado)
        
        # Apagar o ficheiro encriptado
        os.remove(ego)
        
# Mostrar a caixa de texto quando completo
messagebox.showinfo("Decriptação completa", "Todos os ficheiros foram decriptados. Cuidado com os programas que abre!")