const numeros = [1,2,"3",4,5]

try{
    const doubleNumbers = numeros.map((num)=>{
        if(typeof num !== 'number'){
            throw new Error("O array so pode ter numeros")
        }else{
            return num*2
        }
    })
    console.log(doubleNumbers)
}catch(error){
    console.log("Ocorreu uma Exceção: " + error.message)
}