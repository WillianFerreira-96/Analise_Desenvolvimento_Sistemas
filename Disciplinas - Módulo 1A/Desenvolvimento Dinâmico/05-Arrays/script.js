//Modos de declarar arrays em js

var myArray = [] //Array vazia
myArray.length = 3 //Determina o tamanho da array
myArray[0] = "will"
myArray[1] = 27
myArray[2] = true
 
var myArray2 = ["will",27,true] //Declaração e incremento

//--------------------------------------------------------------------------

var myArray3 = new Array(7) /*"7" é a declaração do tamanho do array*/
var myArray4 = Array(13) /*"13" é a declaração do tamanho do array*/
myArray3 = [1, 2, 3, 4, 5]
myArray4 = [9, 6, 8, 5, 7]
//--------------------------------------------------------------------------

//Métodos de Array

//join() Transfoma a array em string
console.log(".join(): "+ myArray3.join('|'))
console.log(".join(): "+ myArray3.join('º, '))

//shift() Remove o primeiro valor do array
myArray3.shift()
console.log(".shift(): "+ myArray3)

//pop() Remove o ultimo elemento da array
myArray3.pop()
console.log(".pop(): "+ myArray3)

//unshift() Adiciona um valor ao inicio da array
myArray3.unshift(357)
console.log(".unshift(): "+ myArray3)

//push() Acrescenta um ou mais novos valores a array
myArray3.push(6, 7)
console.log(".push(): "+ myArray3)

///sort() Ordena os elementos da array
console.log(".sort(): "+ myArray4.sort())

//revrse() Inverte os elementos da array
console.log(".reverse(): "+ myArray.reverse())

//length Retorna a quantidade de elementos da array
console.log(".length: "+ myArray3.length)

//indexOf() Localiza a posição do valor informado
console.log(".indexOf(): "+ myArray2.indexOf('will'))

//slice() Retorna um pedaço de uma cópia da array
var myArray5 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(".slice(): "+ myArray5.slice(2))
console.log(".slice(): "+ myArray5.slice(2,6))
console.log(".slice(): "+ myArray5.slice(1, -3))//Ignora as 3 ultimas posições da array 
    //O slice() não altera a array
    console.log(".slice(): Array Intacta "+ myArray5)

//splice() Altera a array em questão e Retorna os elementos removidos
console.log(".splice(): Elementos Removidos "+ myArray5.splice(3))
console.log(".splice(): Array Alterada "+ myArray5)
var myArray6 = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]
console.log(".splice(): Elementos Removidos "+ myArray6.splice(2,3))
console.log(".splice(): Array Alterada "+ myArray6)
    //Substituição com splice()
    var nomes = ["Will", "Mavi", "Trevor"]
    console.log(".splice(): Nomes Removidos: " + nomes.splice(1, 2, "Pipoca","Paçoca"))
    console.log(".splice(): Array Alterada: " + nomes)
    
