import express from 'express';
import prescriptionService from '../services/PrescriptionService.js';

let router = express.Router();

router.get('/prescriptions', async(req, res)=>{
    try {
        const prescriptions = prescriptionService.getAllPrescriptions();
        res.send(prescriptions);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
});

router.get('/prescription/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const prescription = await prescriptionService.getPrescription(id);
        res.send(prescription);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
});

router.post('/postPrescription', async(req, res)=>{
    const {date, appointmentId, medicine, dosage, instructions} = req.body
    try {
        const prescription = prescriptionService.savePrescription({date, appointmentId, medicine, dosage, instructions});
        res.send(prescription);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

router.put('/updatePrescription/:id', async(req, res)=>{
    const {id} = req.params;
    const {date, appointmentId, medicine, dosage, instructions} = req.body
    try {
        const prescription = prescriptionService.updatePrescription(id, {date, appointmentId, medicine, dosage, instructions});
        res.send(prescription);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

router.delete('/deletePrescription/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const prescription = prescriptionService.deletePrescription(id);
        res.send(prescription);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

export default router;