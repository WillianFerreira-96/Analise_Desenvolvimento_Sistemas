function obterValor(valor){
    return new Promise((resolve, reject)=>{
        if(valor > 10){
            valor += 1
            resolve(valor)
        }else{
            reject("Não foi possivel obter o valor")
        }
    })
}

function dobrarValor(valor){
    return valor * 2
}

function adicionar10(valor){
     return valor + 10 
}

obterValor(28)
.then((valor)=>{
    console.log("Valor Obtido")
    return dobrarValor(valor)
})
.then((novoValor)=>{ // A variável "novoValor" é obtida através no return anterior
    console.log("Fazendo o segundo tratamento")
    return adicionar10(novoValor)
})
.then((resultadoFinal)=>{
    total = resultadoFinal + 5
    console.log("O resultado final é: ", total)
})
.catch((erro)=>{
    console.log("Ocorreu um erro: ", erro)
})