//splice() Altera a array em questão e Retorna os elementos removidos
var myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(".splice(): Elementos Removidos "+ myArray.splice(3))
console.log(".splice(): Array Alterada "+ myArray+"\n")

var myArray2 = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]
console.log(".splice(): Elementos Removidos "+ myArray2.splice(2,3))
//'(2,3)' o 3 nesse caso representa a quantidade de elementos a ser removidos
console.log(".splice(): Array Alterada "+ myArray2+"\n")
    //Substituição com splice()
    var nomes = ["Will", "Mavi", "Trevor"]
    console.log(".splice(): Nomes Removidos: " + nomes.splice(1, 2, "Pipoca","Paçoca"))
    console.log(".splice(): Array Alterada: " + nomes)