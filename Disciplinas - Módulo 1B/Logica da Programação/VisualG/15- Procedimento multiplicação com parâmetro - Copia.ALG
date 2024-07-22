Algoritmo "ProcedimentoMultplicaçãoComParâmetro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Lucy Mari
// Autor(a)    : Willian Ferreira
// Data atual  : 13/05/2024

var
//Variaveis Globais
res, n1, n2: inteiro

   Procedimento Mult(a, b: inteiro)
   var
   inicio
         res<- a * b
   fimprocedimento

Inicio
      Escreval("------------------Multiplicação------------------")
      Escreval("Digite dois números que você deseja MULTIPLICAR:")
      Escreva("1º Número:")
      Leia(n1)
      Escreva("2º Número:")
      Leia(n2)
      mult(n1,n2)
      Escreva("A resposta de",n1 ," x", n2," é igual a:",res)
Fimalgoritmo