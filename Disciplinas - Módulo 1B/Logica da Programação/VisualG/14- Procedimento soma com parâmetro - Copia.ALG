Algoritmo "ProcedimentoSomaComParâmetro"
// Disciplina   : [Linguagem e Lógica de Programação]
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
      Escreval("--------------Adição--------------")
      Escreval("Digite dois numeros que você deseja SOMAR:")
      Escreva("1º Numero:")
      Leia(n1)
      Escreva("2º Numero:")
      Leia(n2)
      soma(n1,n2)
      Escreva("A resposta de",n1 ," +", n2," é igual a:",res)
Fimalgoritmo