Algoritmo "Media"
// Disciplina  : Primeiros Conceitos de Programação e Algoritmita
// Professor   : Maria João Duarte
// Descrição   : Indicar a nota de 3 períodos, fazer a média e
//               definir se o aluno passou ou chumbou.
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/6/2022
Var
// Seção de Declarações das variáveis 
media, per1, per2, per3: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("--- MÉDIA DE NOTAS ---")
escreval
escreva("Indique a nota do primeiro período: ")
leia(per1)
  enquanto (per1<0) ou (per1>20) faça
    escreval("Nota invália!")
    escreva("Indique a nota do primeiro período: ")
    leia(per1)
  fimenquanto
escreva("Indique a nota do segundo período: ")
leia(per2)
  enquanto (per2<0) ou (per2>20) faça
    escreval("Nota invália!")
    escreva("Indique a nota do segundo período: ")
    leia(per2)
  fimenquanto
escreva("Indique a nota do terceiro período: ")
leia(per3)
  enquanto (per3<0) ou (per3>20) faça
    escreval("Nota invália!")
    escreva("Indique a nota do terceiro período: ")
    leia(per3)
  fimenquanto
media:=(per1+per2+per3)/3
se (media<9.5) então
    escreval("Média final: ", media)
    escreval("Aluno não aprovado.")
  senão
    escreval("Média final: ", media)
    escreval("Aluno aprovado!")
  fimse
Fimalgoritmo