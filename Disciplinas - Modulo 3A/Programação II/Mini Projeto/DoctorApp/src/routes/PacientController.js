import express from 'express';
import PacientService from '../services/PacientService.js';

let router = express.Router();

router.get('/getPacients', async(req, res)=>{
    try {
        const pacients = PacientService.getAllPacients();
        res.status(201).send(pacients);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.get('/getPacient/:id', async(req, res)=>{
    const id = req.params;
    try {
        const pacient = await PacientService.getPacient(id);
        res.status(201).send(pacient);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.post('/postPacient', async(req, res)=>{
    const {name, birthDate, email, phone} = req.body
    try {
        const newPacient = PacientService.savePacient({name, birthDate, email, phone});
        res.status(201).send(newPacient);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

router.put('/updatePacient/:id', async(req, res)=>{
    const {id} = req.params;
    const {name, birthDate, email, phone} = req.body
    try {
        const pacient = PacientService.updatePacient(id, {name, birthDate, email, phone});
        res.status(201).send(pacient);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

router.delete('/deletePacient/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const pacient = PacientService.deletePacient(id);
        res.status(201).send(pacient);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

export default router;