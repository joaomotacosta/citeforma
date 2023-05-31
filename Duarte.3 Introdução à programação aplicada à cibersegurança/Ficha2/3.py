alunos = {}
for _ in range(1, 4):
  nome = input('Digite o nome: ')
  nota = float(input('Digite a nota: '))
  alunos[nome] = nota 

alunos.values()

soma = 0
for nota in alunos.values():
  print(str(alunos))
  soma += nota
print('Média: ', soma / 3)