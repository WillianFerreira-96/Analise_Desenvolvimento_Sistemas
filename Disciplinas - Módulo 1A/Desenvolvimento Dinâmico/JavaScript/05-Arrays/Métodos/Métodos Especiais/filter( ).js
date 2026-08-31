//filter(function) Filtra a array
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var pares = numbers.filter(n => n % 2 == 0)
console.log(pares)

var impares = numbers.filter((n) =>{
    if(n % 2 != 0){
        return n
    } 
})
console.log(impares)

var funcionarios = [
    {nome: "Luiz", idade: 49},
    {nome: "Paulo", idade: 36},
    {nome: "Enzo", idade: 15},
    {nome: "Eduardo", idade: 34},
    {nome: "Diego", idade: 27},
    {nome: "Manuel", idade: 52},
    {nome: "Kaique", idade: 21},
]

var maisVelho = funcionarios.filter(f =>{
    for(cont=0; f.idade > funcionarios[cont].idade ;cont++){
        return f
    }
})
console.log(maisVelho)

var menos30 = funcionarios.filter(f => f.idade < 30) 
console.log(menos30)