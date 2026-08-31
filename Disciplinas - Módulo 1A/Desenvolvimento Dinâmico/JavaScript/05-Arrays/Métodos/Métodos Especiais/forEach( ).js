//forEach(function) funciona como um for
var foods = ["Bread", "Pizza", "Meat", "Rice"]
foods.forEach(x => console.log(x))
foods.forEach(y => console.log("Food - "+ y))

var numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var total = 0
numeros.forEach(x=>{
    total +=x
})
console.log(total)