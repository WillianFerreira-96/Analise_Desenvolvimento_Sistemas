Algoritmo "ProcedimentoSomaComPar�metro"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Lucy Mari
// Autor(a)    : Willian Ferreira
// Data atual  : 13/05/2024

var
//Variaveis Globais
res, n1, n2: inteiro

   Procedimento soma(x, y: inteiro)
   var
   inicio
         res<- x + y
   fimprocedimento

Inicio
      Escreval("--------------Adi��o--------------")
      Escreval("Digite dois numeros que voc� deseja SOMAR:")
      Escreva("1� Numero:")
      Leia(n1)
      Escreva("2� Numero:")
      Leia(n2)
      soma(n1,n2)
      Escreva("A resposta de",n1 ," +", n2," � igual a:",res)
Fimalgoritmo