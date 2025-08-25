import express from 'express';
import router from './routes/router.js'
import bodyParser from 'body-parser'; // Um middleware do Express

const app = express();

// Middlewares
    //O Middleware processa requisições e respostas antes de chegar à rota final, podendo ler, modificar ou interromper a requisição.
    //app.use() é usado para registrar um middleware que será executado para todas (ou algumas) requisições.
app.use(bodyParser.json()); //Transforma o corpo JSON das requisições em objeto JS acessível via req.body
app.use(bodyParser.urlencoded({extended: true})); //urlencoded() transforma os dados de formulários HTML em objeto JS disponível em req.body

// Rotas
app.use('/', router) //Todas as requisição que começam com '/' será gerenciada pelo módulo router

// Inicializa servidor
const port = 3000;
app.listen(port, ()=>{
    console.log(`Listening on http://localhost:${port}/`)
});