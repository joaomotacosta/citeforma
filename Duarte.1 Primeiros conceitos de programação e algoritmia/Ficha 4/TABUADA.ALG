Algoritmo "Tabuada"
// Disciplina  : Primeiros Conceitos de Programação e Algoritmita
// Professor   : Maria João Duarte
// Descrição   : Indícar um número e dizer a sua tabuada
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/3/2022
Var
// Seção de Declarações das variáveis 
contador, numero, tabuada: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
contador:=1
escreval("Qual é a tabuada que gostaria de ver?")
escreval
escreva("Introduza um número: ")
leia(numero)
escreval
  repita
      tabuada:=numero*contador
      escreval(numero, " x", contador, " = ", tabuada)
      contador:=contador+1
  até (contador>10)
escreval
escreval("Tabuada do", numero, " completa!")
Fimalgoritmo