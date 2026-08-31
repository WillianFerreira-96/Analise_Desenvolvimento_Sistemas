//reduce(function) Reduz uma array a um unico resultado
var numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var totalNumeros = numeros.reduce((total/*Declaração de uma variavel*/, element/*Cada elemento da array*/)=>{
    return total + element
})
console.log(totalNumeros)