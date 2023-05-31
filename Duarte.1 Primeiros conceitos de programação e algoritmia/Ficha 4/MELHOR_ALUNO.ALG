Algoritmo "melhor_aluno"
// Disciplina  : Primeiros Conceitos de Programação e Algoritmita
// Professor   : Maria João Duarte
// Descrição   : Ler notas e nomes de alunos e dizer o melhor
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/3/2022
Var
// Seção de Declarações das variáveis 
contador, numero_alunos, nota, melhor_nota: real
aluno, melhor_aluno: caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
contador:=0
escreva("Quantos alunos tem a turma? ")
leia(numero_alunos)
enquanto (contador<numero_alunos) faca
  contador:=contador+1
  escreva("Qual é o nome do aluno? ")
  leia(aluno)
  escreva("Qual é a nota do aluno ", aluno, "? ")
  leia(nota)
    se (nota>=melhor_nota) entao
      melhor_aluno:=aluno
      melhor_nota:=nota
    fimse
fimenquanto
escreval("Melhor aluno: ", melhor_aluno)
escreval("Melhor nota: ", melhor_nota)
Fimalgoritmo