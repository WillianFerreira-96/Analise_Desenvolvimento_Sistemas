//slice() Retorna um pedaço de uma cópia da array
var myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(".slice(): "+ myArray.slice(2))
console.log(".slice(): "+ myArray.slice(2,6))
console.log(".slice(): "+ myArray.slice(1, -3))//Ignora as 3 ultimas posições da array 
    //O slice() não altera a array
    console.log(".slice(): Array Intacta "+ myArray)