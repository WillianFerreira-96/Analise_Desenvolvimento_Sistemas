import express from 'express';
import appointmentService from '../services/AppointmentService.js';

let router = express.Router();

router.get('/appointments', async(req, res)=>{
    try {
        const appointments = appointmentService.getAllAppointments();
        res.send(appointments);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
});

router.get('/appointment/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const appointment = await appointmentService.getAppointment(id);
        res.send(appointment);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
});

router.post('/postAppointment', async(req, res)=>{
    const {date, doctorId, pacientId} = req.body
    try {
        const appointment = appointmentService.saveAppointment({date, doctorId, pacientId});
        res.send(appointment);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

router.put('/updateAppointment/:id', async(req, res)=>{
    const {id} = req.params;
    const {date, doctorId, pacientId} = req.body
    try {
        const appointment = appointmentService.updateAppointment(id, {date, doctorId, pacientId});
        res.send(appointment);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

router.delete('/deleteAppointment/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const appointment = appointmentService.deleteAppointment(id);
        res.send(appointment);
    } catch (error) {
        console.log(error);
        res.status(500).send(error);
    }
})

export default router;