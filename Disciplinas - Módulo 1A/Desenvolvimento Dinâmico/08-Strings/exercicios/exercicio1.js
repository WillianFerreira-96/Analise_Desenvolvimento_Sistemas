//1º verificar se existe "Ola"
//2º se sim, pegar o que vem depois do "Ola" e trocar para "pessoal" em uma nova string
//3º Por tudo em caixa alta

var frase = "Ola Mundo"
if(frase.includes("Ola")){
    var frase2 = frase.replace("Mundo", "Pessoal")
    var fraseMaiuscula = frase2.toUpperCase()
    console.log(fraseMaiuscula)
}