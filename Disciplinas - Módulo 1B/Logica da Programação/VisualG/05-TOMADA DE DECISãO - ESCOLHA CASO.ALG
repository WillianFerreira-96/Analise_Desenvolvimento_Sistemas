Algoritmo "Tomada de Decis�o - Escolha Caso"
// Disciplina  : L�gica de Programa��o
// Professor   : Franklin Portela
// Autor(a)    : Willian Ferreira Gomes
// Data atual  : 15/04/2024
Var
op: inteiro
n1, n2, resultado: real

Inicio

escreval("Tomada de Decis�o - Escolha")
escreval
escreva("Digite o primeiro numero: ")
leia(n1)
escreva("Digite o segundo numero: ")
leia(n2)
escreval
escreval("Escolha uma opera��o:")
escreval("1 - Soma")
escreval("2 - Mutiplica��o")
escreval("3 - Subtra��o")
escreval("4 - Divis�o")
escreval
escreva("Digite a opera��o desejada: ")
leia(op)

escolha(op)
           caso 1
           resultado <- n1+n2
           escreval("O Resultado �: ",resultado)
           caso 2
           resultado <- n1*n2
           escreval("O Resultado �: ",resultado)
           caso 3
           resultado <- n1-n2
           escreval("O Resultado �: ",resultado)
           caso 4
           resultado <- n1/n2
           escreval("O Resultado �: ",resultado)
           outrocaso
           escreval("Escolha Invalida!")
fimescolha

Fimalgoritmo