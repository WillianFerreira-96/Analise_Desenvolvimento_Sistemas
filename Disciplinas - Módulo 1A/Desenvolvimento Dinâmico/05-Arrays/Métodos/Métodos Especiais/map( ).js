//map(function) Cria uma nova array com base em outra array
var numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]

var dobro = numeros.map(element => element*2)
console.log(dobro)

var funcionarios = [
    {nome: "Luiz", idade: 49},
    {nome: "Paulo", idade: 36},
    {nome: "Enzo", idade: 15},
    {nome: "Eduardo", idade: 34},
    {nome: "Diego", idade: 27},
    {nome: "Manuel", idade: 52},
    {nome: "Kaique", idade: 21},
]

var nomes = funcionarios.map((y)=> y.nome)
console.log(nomes)