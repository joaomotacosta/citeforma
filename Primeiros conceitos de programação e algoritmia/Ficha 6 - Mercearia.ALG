Algoritmo "Mercearia"
// Disciplina  : Primeiros Conceitos de Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : MOCK TESTE - Mercearia
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/10/2022
Var
apple_w, apple_p, straw_w, straw_p, total_w, total_p: real

Inicio
Escreval("Quanto pesam as maçãs?")
escreva("Introduza o valor em kilogramas (kg): ")
leia(apple_w)

escreval

Escreval("Quanto pesam os morangos?")
escreva("Introduza o valor em kilogramas (kg): ")
leia(straw_w)

se (apple_w <= 5) entao
  apple_p := apple_w * 2.5
senao
  apple_p := apple_w *2.2
fimse
se (straw_w <= 5) entao
  straw_p := straw_w * 1.8
senao
  straw_p := straw_w * 1.5
fimse

total_w := apple_w + straw_w
total_p := apple_p + straw_p

se (total_w > 8 ) entao
 total_p := total_p*0.9
 escreval
 escreval("Teve um desconto de 10% porque comprou mais do que 8kg de fruta!")
 escreval("(Não acumulável com outras promoções)")
fimse

se (total_p > 25 ) entao
 total_p := total_p*0.9
 escreval
 escreval("Teve um desconto de 10% porque fez mais de 25€ em compras!")
 escreval("(Não acumulável com outras promoções)")
fimse

escreval
escreval("Quantidade de maçãs: ", apple_w, "kg")
escreval("Preço das maçãs: ", apple_p, "€")

escreval
escreval("Quantidade de morangos: ", straw_w, "kg")
escreval("Preço das maçãs: ", straw_p, "€")

escreval
escreval("Peso total: ", total_w, "kg")
escreval("Preço total: ", total_p, "€")
Fimalgoritmo