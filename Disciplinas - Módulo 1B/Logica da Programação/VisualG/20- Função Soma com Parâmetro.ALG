Algoritmo "FunçãoSomaComParâmetro"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Lucy Mari
// Autor(a)    : Willian Ferreira
// Data atual  : 14/05/2024

var
//Variaveis Globais
n1, n2: inteiro

   funcao soma (a,b: inteiro):inteiro
   var
   inicio
         retorne a + b
   fimfuncao

Inicio
      Escreval("---------------------Soma---------------------")
      Escreval("Digite dois números que você deseja Somar:")
      Escreva("1º Número:")
      Leia(n1)
      Escreva("2º Número:")
      Leia(n2)
      Escreva("A resposta de:",n1 ," +", n2," é igual a:",soma(n1, n2))
Fimalgoritmo