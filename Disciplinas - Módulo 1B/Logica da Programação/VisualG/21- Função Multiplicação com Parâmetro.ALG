Algoritmo "Fun��oMultiplica��oComPar�metro"
// Disciplina  : [Linguagem e L�gica de Programa��o]
// Professor   : Lucy Mari
// Autor(a)    : Willian Ferreira
// Data atual  : 14/05/2024

var
//Variaveis Globais
n1, n2: inteiro

   funcao mult(a, b: inteiro):inteiro
   var
   inicio
         retorne a * b
   fimfuncao

Inicio
      Escreval("---------------Multiplica��o---------------")
      Escreval("Digite dois n�meros que voc� deseja Multiplicar:")
      Escreva("1� N�mero:")
      Leia(n1)
      Escreva("2� N�mero:")
      Leia(n2)
      Escreva("A resposta de:",n1 ," x", n2," � igual a:",mult(n1, n2))
Fimalgoritmo