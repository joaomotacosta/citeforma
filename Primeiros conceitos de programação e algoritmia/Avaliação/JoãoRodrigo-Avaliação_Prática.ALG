Algoritmo "JoãoRodrigo-Avaliação_PRÁTICA"

Var
   aluno: caractere
   media, per1, per2, per3: real
   
Inicio
  //TÍTULO
  escreval("--- MÉDIA DE NOTAS | PORTUGUÊS 11°ANO ---")
  //Ler nome do aluno
  escreval
  escreva("Nome do aluno: ")
  leia(aluno)
  //NOTA 1° PERÍODO
  escreval
  escreva("Nota do 1° período: ")
  leia(per1)
    enquanto (per1<0) ou (per1>20) faça
      escreval("Número introduzido inválido.")
      escreva("Nota do 1° período: ")
      leia(per1:2:2)
    fimenquanto
  //NOTA 2° PERÍODO
  escreval
  escreva("Nota do 2° período: ")
  leia(per2)
    enquanto (per2<0) ou (per2>20) faça
      escreval("Número introduzido inválido.")
      escreva("Nota do 2° período: ")
      leia(per2)
    fimenquanto
  //NOTA 3° PERÍODO
  escreval
  escreva("Nota do 3° período: ")
  leia(per3)
    enquanto (per3<0) ou (per3>20) faça
      escreval("Número introduzido inválido.")
      escreva("Nota do 3° período: ")
      leia(per3)
    fimenquanto
  //CÁLCULO DA MÉDIA
  media:=(per1+per2+per3)/3
  //INDICAR SE ALUNO TEVE MAU, INSUFICIENTE, SUFICIENTE, BOM OU MUITO BOM
  se (media<8) então
    escreval
    escreval("MAU")
  senão
  se (media=8) e (media<10) então
    escreval
    escreval("INSUFICIENTE")
  senão
  se (media>=10) e (media<14) então
    escreval
    escreval("SUFICIENTE")
  senão
  se (media>=14) e (media<18) então
    escreval
    escreval("BOM")
  senão
  se (media>=18) e (media<=20) então
    escreval
    escreval("MUITO BOM")
  fimse
  fimse
  fimse
  fimse
  fimse
  //INDICAR SE ALUNO ESTÁ REPROVADO OU APROVADO
  se (media<10) então
    escreval
    escreval("Média final do/a ", aluno, ": ", media:2:2)
    escreval
    escreval("REPROVADO")
  senão
    escreval
    escreval("Média final do/a ", aluno, ": ", media:2:2)
    escreval
    escreval("APROVADO!")
  fimse
  //FECHO
  escreval
  escreval("-----------------------------------------")
Fimalgoritmo