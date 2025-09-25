import express from 'express';
import router from './routes/router.js'
import bodyParser from 'body-parser'; //Um middleware do Express
import db from './database/database.js' //Para fazer a conexão com o banco de dados é preciso importar o database.js, mesmo que não seja usado diretamente pelo módulo js
import cors from "cors";

const app = express();

//Middlewares
    //Esse Middleware processa requisições e respostas antes de chegar à rota final, podendo ler, modificar ou interromper a requisição.
    //app.use() é usado para registrar um middleware que será executado para todas (ou algumas) requisições.
app.use(bodyParser.json()); //Transforma o corpo JSON das requisições em objeto JS acessível via req.body
app.use(bodyParser.urlencoded({extended: true})); //urlencoded() transforma os dados de formulários HTML em objeto JS disponível em req.body
app.use(cors());

// Rotas
app.use('/', router) //Todas as requisição que começam com '/' será gerenciada pelo módulo router

// Inicializa servidor
const port = 3003;
app.listen(port, ()=>{
    console.log(`Listening on http://localhost:${port}/`)
});