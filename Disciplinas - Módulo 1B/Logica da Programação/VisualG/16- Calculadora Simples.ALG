Algoritmo "CalculadoraSimples"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Lucy Mari
// Autor(a)    : Willian Ferreira
// Data atual  : 13/05/2024

//Nota: Me inspirei como o insentivo da professora Lucy Mari e fiz as 4 opera��es matematicas, cada uma dentro de um procedimento com par�metro.

var
//Variaveis Globais
op, n1, n2: inteiro
res: real

   Procedimento telaInicial
   var
   inicio
      escreval("----------------Calculadora Simples----------------")
      Escreval("Digite dois n�meros:")
      Escreva("1� N�mero:")
      Leia(n1)
      Escreva("2� N�mero:")
      Leia(n2)
      Escreval("------------Qual opera��o deseja fazer?------------")
      Escreval("1- Adi��o")
      Escreval("2- Subtra��o")
      Escreval("3- Multiplica��o")
      Escreval("4- Divis�o")
      Escreva("Digite o n�mero correspondente:")
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

   //Multiplica��o
   Procedimento produto(a, b: inteiro)
   var
   inicio
         res<- a * b
         Escreval("A resposta de",n1 ," x", n2," � igual a:",res)
         proximaAcao
   fimprocedimento

   //Adi��o
   Procedimento soma(a, b: inteiro)
   var
   inicio
         res<- a + b
         Escreval("A resposta de",n1 ," +", n2," � igual a:",res)
         proximaAcao
   fimprocedimento

   //Subtra��o
   Procedimento diferenca(a, b: inteiro)
   var
   inicio
         res<- a - b
         Escreval("A resposta de",n1 ," -", n2," � igual a:",res)
         proximaAcao
   fimprocedimento

   //Divis�o
   Procedimento quociente(a, b: inteiro)
   var
   inicio
         se b=0 entao
              repita
                    escreval("N�o � possivel dividir por 0")
                    escreva("Digite outro n�mero:")
                    Leia(b)
              ate b<>0
         fimse
         res<- a / b
         Escreval("A resposta de",a ," /", b," � igual a:",res)
         proximaAcao
   fimprocedimento

   Procedimento proximaAcao
   var
   inicio
         EscrevaL("-----------------Deseja continuar?-----------------")
         Escreval("1- Sim")
         Escreval("0- N�o")
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

//A Calculadora � simples mas o c�digo nem tanto. haha