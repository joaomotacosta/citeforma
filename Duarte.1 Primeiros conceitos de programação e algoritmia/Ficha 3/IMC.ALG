Algoritmo "IMC"
// Disciplina   : Primeiros Conceitos de Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : Cálculo do Índice de Massa Corporal (IMC)
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/3/2022
Var
// Seção de Declarações das variáveis 
peso: real
altura: real
imc: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Indique o seu peso, em Kilogramas(Kg): ")
leia(peso)
escreva("Indique a sua altura, em Metros (m): ")
leia(altura)
imc:=(peso/(altura*altura))
se (imc>=17) e (imc<18.5) entao
  escreval("IMC: ", imc)
  escreval("Abaixo do peso ideal")
senao
se (imc>=18.5) e (imc<25) entao
  escreval("IMC: ", imc)
  escreval("Peso ideal")
senao
se (imc>=25) e (imc<30) entao
  escreval("IMC: ", imc)
  escreval("Peso acima do ideal")
senao
se (imc>=30) e (imc<35) entao
  escreval("IMC: ", imc)
  escreval("Obesidade")
senao
se (imc>=35) e (imc<40) entao
  escreval("IMC: ", imc)
  escreval("Obesidade Severa")
senao
se (imc>=40) entao
  escreval("IMC: ", imc)
  escreval("Obesidade Morbida")
fimse
fimse
fimse
fimse
fimse
fimse
Fimalgoritmo