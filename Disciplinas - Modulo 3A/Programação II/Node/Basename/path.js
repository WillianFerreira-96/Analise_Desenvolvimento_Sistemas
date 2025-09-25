import { basename } from 'path';

const caminhos = [
    './arquivos/arquivoVazio 1.txt',
    './arquivos/arquivoVazio 2.txt', 
    './arquivos/arquivoVazio 3.txt'
];

const arquivos = caminhos.map(arq => basename(arq));

console.log(arquivos);