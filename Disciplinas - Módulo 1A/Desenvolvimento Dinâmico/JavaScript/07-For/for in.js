//'For in' é usado para inspecionar os atributos (o proprio nome da variavel e não os valores)

var myObject= {
    nome: "Willian",
    idade: "27",
    altura: "1.75cm"
}

//Exemplo 1 
for(index in myObject){
    /*Chamando apenas a variavel de controle 'index' 
      ela retorna os nomes das variaveis do objeto,
      e não os valores.*/
    console.log(index)
}


//Exemplo 2 
for(index in myObject){
    //Dessa maneira retorna os valores.
    console.log(myObject[index])
}