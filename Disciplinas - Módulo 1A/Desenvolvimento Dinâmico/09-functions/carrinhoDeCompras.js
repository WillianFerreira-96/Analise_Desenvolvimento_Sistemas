var carrinho = []

//Post
function addIten(item){
    carrinho.push(item.toLocaleUpperCase())
}

//Delete
function deleteIten(item){
    var index = carrinho.indexOf(item.toLocaleUpperCase())
    if(index == -1){
        console.log("Produto não encontardo!")
    }else{
       carrinho.splice(index, 1)
    }        
}

//Get
function viewItens(){
    if(carrinho.length == 0){
        console.log("O Carrinho está vazio!")
    }else{
        for(i in carrinho){
            console.log(carrinho[i])
        }
        console.log("-------------------------------")
    }
}

//delete all
function limparcarrinho(){
    if(carrinho.length !== 0){
        carrinho.length = 0
    }else{
        console.log("O Carrinho já está limpo")
    }
}

//addIten(item)
//viewItens()
//deleteIten(item)
//limparcarrinho()

addIten("cafe")
addIten("Leite")
addIten("Açucar")
addIten("pao")
addIten("Ovos")

viewItens()

deleteIten("açucar")
deleteIten("cafe")

viewItens()

limparcarrinho()
limparcarrinho()

viewItens()