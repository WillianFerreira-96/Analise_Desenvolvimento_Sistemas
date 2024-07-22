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

//unshift() Adiciona um valor ao inicio da array
myArray3.unshift(357)
console.log(".unshift(): "+ myArray3)

///sort() Ordena os elementos da array
console.log(".sort(): "+ myArray4.sort())

//revrse() Inverte os elementos da array
console.log(".reverse(): "+ myArray.reverse())

//slice() Retorna um pedaço da array


//length Retorna a quantidade de elementos da array
console.log(".length: "+ myArray3.length)

//push() Acrescenta um ou mais novos valores a array
myArray3.push(6, 7)
console.log(".push(): "+ myArray3)

//pop() Remove o ultimo elemento da array
myArray3.pop()
console.log(".pop(): "+ myArray3)

//indexOf() Localiza a posição do valor informado
console.log(".indexOf(): "+ myArray2.indexOf('will'))