Algoritmo "ProcedimentoMultplica��oComPar�metro"
// Disciplina   : [Linguagem e L�gica de Programa��o]
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
      Escreval("------------------Multiplica��o------------------")
      Escreval("Digite dois n�meros que voc� deseja MULTIPLICAR:")
      Escreva("1� N�mero:")
      Leia(n1)
      Escreva("2� N�mero:")
      Leia(n2)
      mult(n1,n2)
      Escreva("A resposta de",n1 ," x", n2," � igual a:",res)
Fimalgoritmo