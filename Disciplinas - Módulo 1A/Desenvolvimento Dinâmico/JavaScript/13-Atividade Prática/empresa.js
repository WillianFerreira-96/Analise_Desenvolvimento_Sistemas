class Funcionario{
    constructor(nome, idade, cargo){
        this.nome = nome
        this.idade = idade
        this.cargo = cargo
    }

    seApresentar(){
        console.log(`Me chamo ${this.nome}, tenho ${this.idade} anos de idade e sou ${this.cargo}.`)
    }
    trabalhar(){
        console.log("Trabalhando...")
    }
}

class Gerente extends Funcionario{
    constructor(nome, idade, cargo, departamento){
        super(nome, idade, cargo)
        this.departamento = departamento
    }

    gerenciar(){
        console.log("Gerenciando a equipe...")
    }
}

class Desenvolvedor extends Funcionario{
    constructor(nome, idade, cargo, linguagem){
        super(nome, idade, cargo)
        this.linguagem = linguagem
    }

    seApresentar(){
        console.log(`Me chamo ${this.nome}, tenho ${this.idade} anos de idade e sou ${this.cargo} ${this.linguagem}.`)
    }

    programar(){
        console.log("programando...")
    }
}

var gerente = new Gerente('Marcelo', 48, 'Gerente', 'Desenvolvimento Web')
gerente.seApresentar()
gerente.trabalhar()
gerente.gerenciar()

var desenvolvedor = new Desenvolvedor('Willian', 27, 'Desenvolvedor', 'JavaScript')
desenvolvedor.seApresentar()
desenvolvedor.trabalhar()
desenvolvedor.programar()