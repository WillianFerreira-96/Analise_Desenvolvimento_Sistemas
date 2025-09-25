import express from 'express';
import appointmentService from '../services/AppointmentService.js';

let router = express.Router();

router.get('/getAppointments', async(req, res)=>{
    try {
        const appointments = appointmentService.getAllAppointments();
        res.status(201).send(appointments);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.get('/getAppointment/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const appointment = await appointmentService.getAppointment(id);
        res.status(201).send(appointment);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.post('/postAppointment', async(req, res)=>{
    const {date, doctorId, pacientId} = req.body
    try {
        const appointment = appointmentService.saveAppointment({date, doctorId, pacientId});
        res.status(201).send(appointment);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

router.put('/updateAppointment/:id', async(req, res)=>{
    const {id} = req.params;
    const {date, doctorId, pacientId} = req.body
    try {
        const appointment = appointmentService.updateAppointment(id, {date, doctorId, pacientId});
        res.status(201).send(appointment);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

router.delete('/deleteAppointment/:id', async(req, res)=>{
    const {id} = req.params;
    try {
        const appointment = appointmentService.deleteAppointment(id);
        res.status(201).send(appointment);
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

router.put('/reschedule/:id', async(req, res)=>{
    const {id} = req.params;
    const {date} = req.body;
    try {
        let appointment = await appointmentService.getAppointment(id);
        appointment.date = date;

        appointment = await appointmentService.updateAppointment(id, {date});
        res.send(appointment)
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
})

export default router;