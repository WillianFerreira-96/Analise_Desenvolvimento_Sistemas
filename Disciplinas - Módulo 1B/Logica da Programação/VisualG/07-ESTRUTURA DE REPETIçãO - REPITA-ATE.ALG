Algoritmo "Estrutura de repeti��o - Repita-Ate"
// Disciplina  : L�gica de Programa��o
// Professor   : Franklin Portela
// Autor(a)    : Willian Ferreira Gomes
// Data atual  : 16/04/2024
Var
mult, num, cont: inteiro

Inicio

cont<-1
mult<-1

repita
    escreva("Digite o ",cont,"� numero:")
    leia(num)
    mult <- mult*num
    cont<-cont+1
ate cont > 10

escreva("A multiplica��o dos numeros � = ",mult)
     
Fimalgoritmo