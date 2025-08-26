import mongoose from "mongoose";

mongoose.connect('mongodb://localhost:27017/MyMongoDB');

const db = mongoose.connection;

db.on('error', console.error.bind(console, 'connection error: '));

db.once('open', ()=>{ //Executa a ação determinada quando abrir ('open') apenas uma vez (once)
    console.log('Database connected successfully')
});

export default db;