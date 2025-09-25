Algoritmo "Procedimento Multiplicação"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Lucy Mari
// Autor(a)    : Willian Ferreira
// Data atual  : 12/05/2024

var
//Variaveis Globais
res, n1, n2: inteiro

   Procedimento mult
   var
   inicio
         res<- n1*n2
   fimprocedimento

Inicio
      Escreval("-------MULTIPLICAÇÃO-------")
      Escreval("Digite dois numeros que você deseja multiplicar:")
      Escreva("1º Numero:")
      Leia(n1)
      Escreva("2º Numero:")
      Leia(n2)
      mult
      Escreva("A resposta de:",n1 ," x", n2," é igual a:",res)
Fimalgoritmo