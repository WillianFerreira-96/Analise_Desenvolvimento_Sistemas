//readline-sync permite usar terminal para inserir dados
//npm install readline-sync --save
var leia = require("readline-sync")

var nome = leia.question("Digite seu nome: \n")
var idade = leia.question("Digite sua idade: \n")

console.log(`Seu nome é ${nome} \ne você tem ${idade} anos de idade.`)

//node script.js  <--- pra rodar