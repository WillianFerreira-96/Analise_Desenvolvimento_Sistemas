//Calculo de IMC
function criarPessoa(n, s, p, a){
    return{
        nome: n,
        sobrenome: s,
        peso: p,
        altura: a,
        indiceDeMassaCorporal(){
            const indice = this.peso/(this.altura**2).toFixed(1)
            if(indice<=18.5){
                console.log(`${this.nome} está com o peso abaixo do ideal`)
            }else if(indice<=24.9){
                console.log(`${this.nome} está com o peso ideal`)
            }else if(indice<=29.9){
                console.log(`${this.nome} está com sobrepeso`)
            }else if(indice<=34.9){
                console.log(`${this.nome} está com obesidade I`)
            }else if(indice<=39.9){
                console.log(`${this.nome} está com obesidade II`)
            }else if(indice>=40){
                console.log(`${this.nome} está com obesidade III`)
            }
        }
    }
}
var p1 = criarPessoa("willian", "ferreira", 97, 1.75)
p1.indiceDeMassaCorporal()
