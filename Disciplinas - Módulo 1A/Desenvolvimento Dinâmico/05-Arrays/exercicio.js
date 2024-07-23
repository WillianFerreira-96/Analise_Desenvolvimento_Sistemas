//1º Criar Array com 5 nomes
    //Guilherme, Manuel, Samuel, Davi e João
var nomes = ["Guilherme", "Manuel", "Samuel", "Davi", "João"]
console.log(nomes)

//2º Acrecentar o nome Mônica
nomes.unshift("Mônica")
console.log(nomes)

//3º Retirar o último elemento da array
nomes.pop()
console.log(nomes)

//4º Encontrar a posição do Samuel
const local = nomes.indexOf("Samuel")
console.log(["Samuel está na posição: "+ local])

//Tocar o Manuel por Emanuel
nomes.splice(2, 1, "Emanuel")
console.log(nomes)