function checkPositive(numeros){
    if(!Array.isArray(numeros)){
        throw new Error("O Argumento deve ser de um array")
    }
    const allPositive = numeros.every((num)=>num>0)
    //.every <--- retorna um booleano
    if(!allPositive){
        throw new Error("O array deve conter apenas numeros positivos")
    }
    return true
}

try{
    const numbers = ["",2,3,4,5,6]

    const isPositive = checkPositive(numbers)

    console.log(isPositive)

}catch(error){
    console.log("Erro: " + error.message)
}