Algoritmo "Procedimento Multiplica��o"
// Disciplina   : [Linguagem e L�gica de Programa��o]
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
      Escreval("-------MULTIPLICA��O-------")
      Escreval("Digite dois numeros que voc� deseja multiplicar:")
      Escreva("1� Numero:")
      Leia(n1)
      Escreva("2� Numero:")
      Leia(n2)
      mult
      Escreva("A resposta de:",n1 ," x", n2," � igual a:",res)
Fimalgoritmo