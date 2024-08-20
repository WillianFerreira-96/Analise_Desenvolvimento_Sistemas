//Classe Pai
class dispositivoEletronico{
    constructor(nome){
        this.nome = nome
        this.ligado = false
    }

    ligar(){
        if(this.ligado){
            console.log("Já está ligado")
        }else{
            this.ligado = true
        }
    }
}

//Classe filho usa 'extends' para herdar do pai
class smartfone extends dispositivoEletronico{
    constructor(nome, cor, modelo){
        super(nome),
        this.cor = cor
        this.modelo = modelo
    }
}

var fone = new smartfone('Motorola','Preto','E32')
console.log(fone)
fone.ligar()
fone.ligar()
