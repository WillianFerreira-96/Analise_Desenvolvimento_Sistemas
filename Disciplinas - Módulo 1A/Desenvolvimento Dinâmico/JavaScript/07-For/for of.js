//'For of' é usado para acessar cada elemento diretamente

var user = [{nome:"Willian", idade: "27", altura: "1.75cm"},{nome:"Maria", idade: "21", altura: "1.47cm"}]

//Exemplo 1 
for(index of user){
    //Retorna diretamente os valores dentro da array
    console.log(index)
}

//Exemplo 2 
for(index of user){
    //Retorna apenas os valores dentro no 'nome'
    console.log(index.nome)
}

