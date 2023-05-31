Algoritmo "Percentagem Alunos"
// Disciplina  : Primeiros Conceitos de Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : MOCK TESTE - Mercearia
// Autor(a)    : João Rodrigo Mota da Costa
// Data atual  : 11/10/2022
Var
// Seção de Declarações das variáveis 
n_rapaz, n_rapariga, total_alunos: inteiro
perc_rapaz, perc_rapariga: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Escreva("Número de rapazes: ")
Leia(n_rapaz)
Escreva("Número de raparigas: ")
Leia(n_rapariga)
total_alunos <- n_rapaz + n_rapariga
perc_rapaz <- n_rapaz *100/total_alunos
perc_rapariga <- 100-perc_rapaz
Escreval ("A percentagem de rapazes é: ", perc_rapaz)
Escreval ("A percentagem de raparigas é: ", perc_rapariga)

Fimalgoritmo