//Converter Para JSON com JSON.stringify()
const pessoa = {
    nome: "joão",
    idade: 25, 
    profissão: "desenvolvedor"
}

const pessoaJson = JSON.stringify(pessoa)
console.log(pessoaJson)


//Converter Para Objeto com JSON.parse()
const pessoaObj = JSON.parse(pessoaJson)
console.log(pessoaObj)