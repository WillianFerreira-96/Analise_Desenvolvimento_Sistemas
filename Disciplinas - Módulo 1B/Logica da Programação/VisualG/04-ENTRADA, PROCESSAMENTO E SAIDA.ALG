Algoritmo "Entrada, Processamento e Saida"
// Disciplina  : Lógica de Programação
// Professor   : Franklin Portela
// Autor(a)    : Willian Ferreira Gomes
// Data atual  : 15/04/2024
Var
n1, n2, n3, soma: inteiro
media: real

Inicio

escreval("Entrada, Processamento e Saida de Dados:")
escreval
escreva("Digite o primeiro numero: ")
leia(n1)
escreva("Digite o segundo numero: ")
leia(n2)
escreva("Digite o terceiro numero: ")
leia(n3)

soma <- n1+n2+n3
media <- soma/3

escreval
escreval("Os numeros digitados foram: ",n1,", ",n2," e ",n3)
escreval("A Soma dos numeros",n1,", ",n2," e ",n3," é igual a ",soma)
escreval("A Media dos numeros",n1,", ",n2," e ",n3," é igual a ", media)

Fimalgoritmo