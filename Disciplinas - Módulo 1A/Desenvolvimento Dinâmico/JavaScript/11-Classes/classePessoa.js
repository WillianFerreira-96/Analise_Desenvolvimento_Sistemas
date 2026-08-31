class pessoa{
    constructor(nome, sobrenome){
        this.nome = nome
        this.sobrenome = sobrenome
        this.nome
    }

    falar(){
        console.log(`olá ${this.nome}`)
    }

    get nomeCompleto(){
        console.log(this.nome +" "+ this.sobrenome)
    }
}

p1 = new pessoa('willian','ferreira')
p1.falar()
p1.nomeCompleto