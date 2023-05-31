Algoritmo "Matriz-3x2"
// Disciplina  : Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : Ler e mostrar os valores de uma matriz 3x2
// Autor(a)    : João Rodrigo
// Data atual  : 11/21/2022
Var
// Seção de Declarações das variáveis
mat: vetor[1..3, 1..2] de inteiro
l, c, li, ci: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval(" ---------")
para l <-1 ate 3 faca
     para c <-1 ate 2 faca
          para li <-1 ate 3 faca
               para ci <-1 ate 2 faca
               escreva(" |")
                    escreva(mat[li,ci])
               fimpara
               escreva(" |")
               escreval()
               escreval(" ---------")
               escreval()
          fimpara
          escreval("Indique o valor", c," da linha", l)
          leia(mat[l,c])
     fimpara
fimpara

escreval(" ---------")
para l <-1 ate 3 faca
     para c <- 1 ate 2 faca
          escreva(" |")
          escreva (mat[l,c])
     fimpara
     escreva(" |")
     escreval()
     escreval(" ---------")
     escreval()
fimpara
Fimalgoritmo