const express = require('express')
//Instanciando o express
const app = express()
//------------------------------------------------------------------------------------------------------------
//Definição de Rotas
app.get('/',(req, res)=>{
    res.sendFile(__dirname +'/index.html')
})
//------------------------------------------------------------------------------------------------------------
//O app.listen deve ser a ultima linha do codigo
const port = 3000
app.listen(port,'0.0.0.0', ()=>{
    console.log(`O Servidor Express está rodando na porta http://localhost:${port}`)
})
//Comando: node server.js
/*Acesso remoto via Wifi: 
    Permitir o apache http server no firewall
    link de acesso= 192.168.1.4:3000 (ip_do_servidor:porta_localhost)
*/
