class Objeto{
    constructor(nome,descricao,categoria,preco){
        this.nome = nome
        this.descricao = descricao
        this.categoria = categoria
        this.preco = preco 
    }
}

var objetos = [
    new Objeto("Sansung A71", "Celular para games", "Eletrônico", 1500),
    new Objeto("Sansung TAB G21", "Tablet para estudo", "Eletrônico", 2100),
    new Objeto("Fogão 4 bocas", "Fogão para alimentação saudável", "Eletrodoméstico", 1600),
    new Objeto("Geladeira e Freezer", "Congela rápido", "Eletrodoméstico", 4000),
    new Objeto("Air Fryer", "Agiliza seu dia", "Eletrodoméstico", 950)
]

const resposta = document.getElementById("resposta")
const btnPesquisar = document.getElementsByTagName("button")[0]
btnPesquisar.addEventListener("click", filtrarPorCategoria())

function filtrarPorCategoria(){
    const entrada = document.getElementById("categoriaInput").value
    resposta.innerHTML=""

    var categoriaFiltrada = objetos.filter(c => c.categoria == entrada)
    if(categoriaFiltrada.length==0){
        resposta.innerHTML = "Categoria não encontrada"
    }
    
    categoriaFiltrada.forEach(obj => {
        const li = document.createElement("li")
        li.innerHTML = `
        <strong>Nome: </strong>${obj.nome}<br>
        <strong>Descrição: </strong>${obj.descricao}<br>
        <strong>Categoria: </strong>${obj.categoria}<br>
        <strong>Preço: </strong>${obj.preco}<br>
        `
        resposta.appendChild(li)
    })
}