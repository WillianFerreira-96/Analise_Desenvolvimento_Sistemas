import express from 'express';
import appointmentController from './AppointmentController.js';
import doctorController from './DoctorController.js';
import pacientController from './PacientController.js';
import prescriptionController from './PrescriptionController.js';
import doctorService from '../services/DoctorService.js';
import bcrypt from 'bcrypt';
import verifyToken from '../middleware/authMiddleware.js';
import jwt from 'jsonwebtoken';

let router = express.Router(); //Cria um módulo de rotas independente

router.get('/',(req, res)=>{
    console.log('Aoba. Bão.');
    res.status(200).json({message : 'Funfou!'}) //Define o status HTTP como 200 e envia um objeto JSON como resposta
});

router.post('/login', async(req, res)=>{
    try {
        const {login, password} = req.body;
        const doctor = await doctorService.getDoctorByLogin(login);
        if(!doctor){
            return res.status(401).json({error: "Authentication falied!"});
        }

        const passwordMatch = bcrypt.compare(password, doctor.password);
        if(!passwordMatch){
            return res.status(401).json({error: "Authentication falied!"});
        }

        const token = jwt.sign({doctorId: doctor._id}, "you-secret-key", {expiresIn: '1h'});
        res.status(200).json({token});

    } catch (error) {
        console.log(error);
        res.status(500).json({error: 'Login Failed!'});
    }
});

router.use('/', verifyToken, appointmentController);
router.use('/', verifyToken, doctorController);
router.use('/', verifyToken, pacientController);
router.use('/', verifyToken, prescriptionController);

export default router;