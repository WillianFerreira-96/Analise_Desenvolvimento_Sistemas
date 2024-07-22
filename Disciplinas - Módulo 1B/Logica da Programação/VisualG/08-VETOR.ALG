Algoritmo "Vetor"
// Disciplina  : Lógica de Programação
// Professor   : Franklin Portela
// Autor(a)    : Willian Ferreira Gomes
// Data atual  : 17/04/2024
Var
nomes:vetor[1..5]de caracter
notas:vetor[1..5]de inteiro
cont,soma:inteiro
media_turma:real


Inicio
cont<-1
para cont de 1 ate 5 passo 1 faca
     escreval("Digite o nome do ",cont,"º aluno: ")
     leia(nomes[cont])
fimpara

cont<-1
para cont de 1 ate 5 passo 1 faca
     escreval("Digite a nota de ",nomes[cont],": ")
     leia(notas[cont])
     soma<-soma+notas[cont]
fimpara

media_turma<-soma/5

escreval("A media das notas da turma é: ",media_turma)

Fimalgoritmo