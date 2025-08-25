import express from 'express';
import doctorService from '../services/DoctorService.js';

let router = express.Router();

router.get('/doctors', async(req, res)=>{
    try {
        const doctors = doctorService.getAllDoctors();
        res.send(Doctors);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
});

router.get('/doctor/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const doctor = await doctorService.getDoctor(id);
        res.send(doctor);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
});

router.post('/postDoctor', async(req, res)=>{
    const {date, doctorId, pacientId} = req.body
    try {
        const doctor = doctorService.saveDoctor({date, doctorId, pacientId});
        res.send(doctor);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

router.put('/updateDoctor/:id', async(req, res)=>{
    const {id} = req.params;
    const {date, doctorId, pacientId} = req.body
    try {
        const doctor = doctorService.updateDoctor(id, {date, doctorId, pacientId});
        res.send(doctor);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

router.delete('/deleteDoctor/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const doctor = doctorService.deleteDoctor(id);
        res.send(doctor);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

export default router;
