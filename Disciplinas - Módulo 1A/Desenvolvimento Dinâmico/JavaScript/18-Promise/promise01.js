const minhaPromise = new Promise((resolve,reject)=>{
    const sucesso = false
    
    if(sucesso){
        resolve("Funfou!")
    }else{
        reject("Ocoreu um problema")
    }
})

minhaPromise.then((resultado)=>{
    console.log(resultado)
}).catch((erro)=>{
    console.log("Erro: " + erro)
})