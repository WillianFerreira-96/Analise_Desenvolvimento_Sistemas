import express from 'express';
import appointmentController from './AppointmentController.js';
import doctorController from './DoctorController.js';
import pacientController from './PacientController.js';
import prescriptionController from './PrescriptionController.js';

let router = express.Router(); //Cria um módulo de rotas independente

router.get('/',(req, res)=>{
    console.log('Aoba. Bão.');
    res.status(200).json({message : 'Funfou!'}) //Define o status HTTP como 200 e envia um objeto JSON como resposta
});

router.use('/', appointmentController);
router.use('/', doctorController);
router.use('/', pacientController);
router.use('/', prescriptionController);

export default router;