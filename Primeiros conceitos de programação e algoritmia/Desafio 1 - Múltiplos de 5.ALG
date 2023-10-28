Algoritmo "Multiplicados por 5"
// Disciplina  : Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : Ler 2 vetores e indicar os multiplicados por 5
// Autor(a)    : João Rodrigo
// Data atual  : 11/20/2022
Var
  i:inteiro
  num: vetor[1..10] de inteiro
  val: vetor[1..10] de  inteiro
Inicio
  para i:=1 ate 10 faca
       escreval ("introduza um numero")
       leia (num[i])
  fimpara

  para i:=1 ate 10 faca
     val[i]:=num[i]*5
     escreval (num[i], " X 5 = " ,val[i])
  fimpara
Fimalgoritmo