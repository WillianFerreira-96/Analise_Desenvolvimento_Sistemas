//Modos de declarar objetos em js
//1-------------------------
var pessoa = {
    nome: 'Willian',
    sobrenome: 'Ferreira'
}
console.log(pessoa['nome']) //ou
console.log(pessoa.sobrenome)

//2-------------------------
const funcionario = new Object()
funcionario.nome = 'Willian'
funcionario.sobrenome = 'Ferreira'

//3-------------------------
function criarPessoa(nome, sobrenome){
    return {nome,sobrenome}
}
var p1 = criarPessoa('Maria','Venturini')
console.log(p1)