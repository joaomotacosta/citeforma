Algoritmo "Carta"
// Disciplina   : Primeiros Conceitos de Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : Ler e indicar se tem idade para tirar a carta
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/3/2022
Var
// Seção de Declarações das variáveis 
ano_atual: real
ano_nascimento: real
idade: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Indique o seu ano de nascimento: ")
leia(ano_atual)
escreva("Indique o ano atual: ")
leia(ano_nascimento)
idade:=ano_nascimento-ano_atual
se (idade>=18) entao
  escreval("Idade: ", idade)
  escreval("Tem idade suficiente para tirar a carta")
senao
  escreval("Idade: ", idade)
  escreval("Não tem idade para tirar a carta")
fimse
Fimalgoritmo