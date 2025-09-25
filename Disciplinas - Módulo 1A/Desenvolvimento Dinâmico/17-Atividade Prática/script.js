class Funcionario{
    constructor(nome, idade, cargo){
        this.nome = nome
        this.idade = idade
        this.cargo = cargo
    }

    seApresentar(){
        console.log(`Me chamo ${this.nome}, tenho ${this.idade} anos de idade e sou ${this.cargo}.`)
    }
}

class Gerente extends Funcionario{
    constructor(nome, idade, cargo, departamento){
        super(nome, idade, cargo)
        this.departamento = departamento
    }

    seApresentar(){
        const res = document.getElementById('res')
        var p = document.createElement('p')
        p.textContent = `Me chamo ${this.nome}, tenho ${this.idade} anos de idade e sou ${this.cargo} do departemendo ${this.departamento}.`
        res.appendChild(p)
    }

    gerenciar(){
        const res = document.getElementById('res')
        var p = document.createElement('p')
        p.textContent = "Status: Gerenciando a equipe..."
        res.appendChild(p)
    }
}

class Desenvolvedor extends Funcionario{
    constructor(nome, idade, cargo, linguagem){
        super(nome, idade, cargo)
        this.linguagem = linguagem
    }

    seApresentar(){
        const res = document.getElementById('res')
        var p = document.createElement('p')
        p.textContent = `Me chamo ${this.nome}, tenho ${this.idade} anos de idade e sou ${this.cargo} ${this.linguagem}.`
        res.appendChild(p)
    }

    programar(){
        const res = document.getElementById('res')
        var p = document.createElement('p')
        p.textContent = "Status: Programando..."
        res.appendChild(p)
    }
}


var formulario = document.getElementsByTagName("form")[0]
formulario.addEventListener('submit',(event)=>{
    event.preventDefault()
    const res = document.getElementById('res')
    res.innerHTML=''

    const valores=[
        inputNome = document.getElementById("inputNome").value.toLocaleUpperCase(),
        inputIdade = document.getElementById("inputIdade").value.toLocaleUpperCase(),
        inputCargo = document.getElementById("inputCargo").value.toLocaleUpperCase(),
        inputDepartamento = document.getElementById("inputDepartamento").value.toLocaleUpperCase(),
        inputLinguagem = document.getElementById("inputLinguagem").value.toLocaleUpperCase() 
    ]

    try{
        const preenchidos = valores.every((v)=>v.length>0)
        if(!preenchidos){
            throw new Error("Não pode haver campos vazios")        
        }
    }catch(error){
        exibirErro(error)
    }

    try{
        if(valores[2]=="GERENTE"){
            var gerente = new Gerente(inputNome, inputIdade, inputCargo, inputDepartamento)
            gerente.seApresentar()
            gerente.gerenciar()
        }else if(valores[2]=="DESENVOLVEDOR"){
            var desenvolvedor = new Desenvolvedor(inputNome, inputIdade, inputCargo, inputLinguagem)
            desenvolvedor.seApresentar()
            desenvolvedor.programar()
        }else{
             throw new Error("Cargo Digitado Inválido")
        }
    }catch(error){
        exibirErro(error)
    }
       
})

function exibirErro(error){
    alert('error: ' + error.message)
}