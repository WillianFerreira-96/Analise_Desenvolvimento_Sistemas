function processName(nome, callback){
    if(typeof nome !== "string"){
        callback(new Error("O nome deve ser uma String"))
        return
    }

    if(nome.length === 0){
        callback(new Error("O nome não pode estar vazio"))
        return
    }

    callback(null,"Nome Processado com sucesso")
}
processName("Willian",(error,result)=>{
    if(error){
        console.log("Ocorreu um problema: " + error.message)
    }else{
        console.log(result)
    }
})