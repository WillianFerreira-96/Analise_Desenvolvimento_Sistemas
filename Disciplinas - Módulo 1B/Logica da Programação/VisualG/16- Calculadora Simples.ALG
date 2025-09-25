Algoritmo "CalculadoraSimples"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Lucy Mari
// Autor(a)    : Willian Ferreira
// Data atual  : 13/05/2024

//Nota: Me inspirei como o insentivo da professora Lucy Mari e fiz as 4 operações matematicas, cada uma dentro de um procedimento com parâmetro.

var
//Variaveis Globais
op, n1, n2: inteiro
res: real

   Procedimento telaInicial
   var
   inicio
      escreval("----------------Calculadora Simples----------------")
      Escreval("Digite dois números:")
      Escreva("1º Número:")
      Leia(n1)
      Escreva("2º Número:")
      Leia(n2)
      Escreval("------------Qual operação deseja fazer?------------")
      Escreval("1- Adição")
      Escreval("2- Subtração")
      Escreval("3- Multiplicação")
      Escreval("4- Divisão")
      Escreva("Digite o número correspondente:")
      Leia(op)

      enquanto (op<1) ou (op>4) faca
         escreval("Escolha Invalida!")
         Leia(op)
      fimenquanto

      escolha(op)
         caso 1
            soma(n1, n2)
         caso 2
            diferenca(n1, n2)
         caso 3
            produto(n1, n2)
         caso 4
            quociente(n1, n2)
      fimescolha
   fimprocedimento

   //Multiplicação
   Procedimento produto(a, b: inteiro)
   var
   inicio
         res<- a * b
         Escreval("A resposta de",n1 ," x", n2," é igual a:",res)
         proximaAcao
   fimprocedimento

   //Adição
   Procedimento soma(a, b: inteiro)
   var
   inicio
         res<- a + b
         Escreval("A resposta de",n1 ," +", n2," é igual a:",res)
         proximaAcao
   fimprocedimento

   //Subtração
   Procedimento diferenca(a, b: inteiro)
   var
   inicio
         res<- a - b
         Escreval("A resposta de",n1 ," -", n2," é igual a:",res)
         proximaAcao
   fimprocedimento

   //Divisão
   Procedimento quociente(a, b: inteiro)
   var
   inicio
         se b=0 entao
              repita
                    escreval("Não é possivel dividir por 0")
                    escreva("Digite outro número:")
                    Leia(b)
              ate b<>0
         fimse
         res<- a / b
         Escreval("A resposta de",a ," /", b," é igual a:",res)
         proximaAcao
   fimprocedimento

   Procedimento proximaAcao
   var
   inicio
         EscrevaL("-----------------Deseja continuar?-----------------")
         Escreval("1- Sim")
         Escreval("0- Não")
         Escreva("Resposta:")
         leia(op)

         enquanto (op<>1) e (op<>0) faca
                  escreval("Escolha Invalida!")
                  leia(op)
         fimenquanto

         escolha(op)
                caso 1
                telaInicial
                caso 0
                Escreva("Tchau! Muito Obrigado! :)")
         fimescolha
   fimprocedimento

Inicio
    telaInicial
Fimalgoritmo

//A Calculadora é simples mas o código nem tanto. haha