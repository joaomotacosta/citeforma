Algoritmo "Ficha5"
// Disciplina   : Primeiros Conceitos de Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : Ler 5 números e dizer a média, soma e divisível por 5.
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/9/2022
Var
num, media, soma, somapare:real
cont, contnulo, divisao: inteiro

Inicio
  cont:=1
  enquanto cont<=5 faca
    escreval("Introduza o ", cont, "° valor!")
    leia(num)
    soma:=soma+num
    se (num=0) entao
      contnulo:=contnulo+1
    fimse
    se (num MOD 5=0) e (num<>0) entao
      divisao:=divisao+1
    fimse
    se (num MOD 2=0) entao
      somapare:=somapare+num
    fimse
    cont:=cont+1
  fimenquanto
  media:=soma/5
  escreval
  escreval("A soma de todos os valores é ", soma)
  escreval
  escreval("A média de todos os valores é ", media)
  escreval
  escreval("O número de valores divisivel por 5 é ", divisao)
  escreval
  escreval("O número de valores nulos é ", contnulo)
  escreval
  escreval("A soma de todos os valores pares é ", somapare)
Fimalgoritmo