import os
num = []
soma = 0

for a in range (0,5):
  valor = int(input("Digite o " + str(a+1) + "° valor: "))
  num.append(valor)

print (num)

for a in num:
  soma += a

print("A soma dos valores é " + str(soma))

os.system("pause")