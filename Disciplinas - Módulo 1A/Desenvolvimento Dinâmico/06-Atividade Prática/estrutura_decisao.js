var readline = require('readline-sync')

do{
    var bebida = readline.question("Escolha a sua bebida: ")
    var valor
    var invalido = false
    switch(bebida){
        case "cafe":
            valor = 3.5.toFixed(2)
            console.log("\nVocê escolheu "+bebida+"\nValor Referente: R$"+valor)
        break;
        case "leite":
            valor = 2.5.toFixed(2)
            console.log("\nVocê escolheu "+bebida+"\nValor Referente: R$"+valor)
        break;
        case "cha":
            valor = 2.0.toFixed(2)
            console.log("\nVocê escolheu "+bebida+"\nValor Referente: R$"+valor)
        break;
        default:
            console.log("\nNão temos "+bebida+"\nPor favor escolha entre:\nCafé, Leite ou Chá.\n")
            invalido = true
    }
}while(invalido)