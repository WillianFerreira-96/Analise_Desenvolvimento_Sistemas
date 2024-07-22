Algoritmo "Tomada de Decisão - Escolha Caso"
// Disciplina  : Lógica de Programação
// Professor   : Franklin Portela
// Autor(a)    : Willian Ferreira Gomes
// Data atual  : 15/04/2024
Var
op: inteiro
n1, n2, resultado: real

Inicio

escreval("Tomada de Decisão - Escolha")
escreval
escreva("Digite o primeiro numero: ")
leia(n1)
escreva("Digite o segundo numero: ")
leia(n2)
escreval
escreval("Escolha uma operação:")
escreval("1 - Soma")
escreval("2 - Mutiplicação")
escreval("3 - Subtração")
escreval("4 - Divisão")
escreval
escreva("Digite a operação desejada: ")
leia(op)

escolha(op)
           caso 1
           resultado <- n1+n2
           escreval("O Resultado é: ",resultado)
           caso 2
           resultado <- n1*n2
           escreval("O Resultado é: ",resultado)
           caso 3
           resultado <- n1-n2
           escreval("O Resultado é: ",resultado)
           caso 4
           resultado <- n1/n2
           escreval("O Resultado é: ",resultado)
           outrocaso
           escreval("Escolha Invalida!")
fimescolha

Fimalgoritmo