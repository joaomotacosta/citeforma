Algoritmo "Matriz-4x4"
// Disciplina  : Programação e Algoritmia
// Professor   : Maria João Duarte
// Descrição   : Ler e mostrar os valores de uma matriz 4x4
// Autor(a)    : João Rodrigo
// Data atual  : 11/21/2022
Var
mat: vetor[1..4, 1..4] de inteiro
l, c, li, ci, maior, soma, produto: inteiro
Inicio
escreval("  -------------------")

para l <-1 ate 4 faca
     para c <-1 ate 4 faca
          para li <-1 ate 4 faca
               para ci <-1 ate 4 faca
               escreva(" |")
                    escreva(mat[li,ci]:3)
               fimpara
               escreva(" |")
               escreval()
               escreval("  -------------------")
               escreval()
          fimpara
          escreval("Indique o valor", c," da linha", l)
          leia(mat[l,c])
          escreval("  -------------------")
          se (l = c) entao
             soma <- soma + mat[l,c]
          fimse

          se (mat[l,3] >= maior) entao
             maior <- mat[l,3]
          fimse
     fimpara
fimpara

para c <- 1 ate 4 faca
     produto <- produto + mat[2,c]
fimpara

escreval("  -------------------")
para l <-1 ate 4 faca
     para c <- 1 ate 4 faca
          escreva(" |")
          escreva(mat[l,c]:3)
     fimpara
     escreva(" |")
     escreval()
     escreval("  -------------------")
     escreval()
fimpara

escreval("O maior número da terceira coluna: ", maior)
escreval("O produto da segunda linha: ", produto)
escreval("A soma do valor da diagonal: ", soma)


Fimalgoritmo