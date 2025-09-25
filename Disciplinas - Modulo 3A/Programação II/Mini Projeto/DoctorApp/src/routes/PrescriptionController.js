import express from 'express';
import prescriptionService from '../services/PrescriptionService.js';
import multer from 'multer';
import path from 'path';
import process from 'process';

let router = express.Router();

const storage = multer.diskStorage({
    destination:(req, file, cb)=>{
        cb(null, './docsPrescription/')
    },
    filename: (req, file, cb)=>{
        cb(null, file.originalname)    
    }
});

const upload = multer({storage: storage});

router.post('/uploadPrescription/:id', upload.single('file'), async(req, res)=>{
    try {
        const {id} = req.params;
        let prescription = await prescriptionService.getPrescription(id);

        const file = './docsPrescription/' + req.file.originalname;
        prescription = await prescriptionService.updatePrescription(id, {file});

        return res.status(201).send(prescription);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.get('/readPrescription/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const prescription = await prescriptionService.getPrescription(id);
        let filePrescription = path.resolve(process.cwd() + "/" + prescription.file)

        return res.status(201).sendFile(filePrescription);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.get('/getAllPrescriptions', async(req, res)=>{
    try {
        const allPrescriptions =  await prescriptionService.getAllPrescriptions();
        res.status(200).send(allPrescriptions);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.get('/getPrescription/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const prescription = await prescriptionService.getPrescription(id);
        res.status(201).send(prescription);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.post('/createPrescription', async(req, res)=>{
    const {date, appointmentId, medicine, dosage, instructions} = req.body
    try {
        const prescription = await prescriptionService.savePrescription({date, appointmentId, medicine, dosage, instructions});
        res.status(201).send(prescription);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

/*
router.put('/updatePrescription/:id', async(req, res)=>{
    const {id} = req.params;
    const {date, appointmentId, medicine, dosage, instructions} = req.body
    try {
        const prescription = prescriptionService.updatePrescription(id, {date, appointmentId, medicine, dosage, instructions});
        res.status(201).send(prescription);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})
*/

router.delete('/deletePrescription/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const prescription = await prescriptionService.deletePrescription(id);
        res.status(201).send(prescription);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

router.get('/generatePrescription/:id', async(req,res)=>{
    const {id} = req.params;
    try {
        const prescription = await prescriptionService.getPrescription(id);
        const generatePrescription = await prescriptionService.generatePrescriptionFile(prescription);
        res.status(200).send(generatePrescription);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

export default router;