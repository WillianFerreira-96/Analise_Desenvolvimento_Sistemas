//Criar array de objetos
var produtos = [
    {codigo: 1, descricao: "Smartfone", categoria: "Eletronico"},
    {codigo: 2, descricao: "Notebook", categoria: "Eletronico"},
    {codigo: 3, descricao: "Geladeira", categoria: "Eletrodomestico"},
    {codigo: 4, descricao: "Caixa de Som", categoria: "Eletronico"},
    {codigo: 5, descricao: "Headset", categoria: "Eletronico"},
    {codigo: 6, descricao: "Porta-retrato", categoria: "Acessorio"},
    {codigo: 7, descricao: "Computador", categoria: "Eletronico"},
    {codigo: 8, descricao: "Fogão", categoria: "Eletrodomestico"},
    {codigo: 9, descricao: "Micro-ondas", categoria: "Eletrodomestico"},
    {codigo: 10, descricao: "Porta-chaves", categoria: "Acessorio"}
]

//Filtrar por categoria
var eletronicos = produtos.filter(p => p.categoria === "Eletronico")
console.log(eletronicos)

var eletrodomesticos = produtos.filter(p => p.categoria === "Eletrodomestico")
console.log(eletrodomesticos)

var acessorios = produtos.filter(p=> p.categoria === "Acessorio")
console.log(acessorios)