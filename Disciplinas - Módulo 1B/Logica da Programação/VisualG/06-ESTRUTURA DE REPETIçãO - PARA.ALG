Algoritmo "Estrutura de repetição - PARA"
// Disciplina  : Lógica de Programação
// Professor   : Franklin Portela
// Autor(a)    : Willian Ferreira Gomes
// Data atual  : 16/04/2024
Var
mult, num, cont: inteiro

Inicio

mult<-1
para cont de 1 ate 10 passo 1 faça
     escreva("Digite o ",cont,"º numero:")
     leia(num)
     mult <- mult*num
fimpara
     escreva("A multiplicação dos numeros é = ",mult)
Fimalgoritmo