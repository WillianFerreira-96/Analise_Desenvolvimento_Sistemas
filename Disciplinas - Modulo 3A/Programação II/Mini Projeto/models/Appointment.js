import mongoose from "mongoose";

const Schema = mongoose.Schema;

const appointmentSchema = new Schema({
    //Não precisa de ID, o MongoDB irá criar automaticamente o ID
    date: {
        type: Date,
        required: [true, 'Date is required.']
    },
    doctorId: {
        type: String,
        require: [true, 'DoctorId is required.']
    },
    pacientId:{
        type: String,
        require: [true, 'PacientId is required.']
    },
    createdAt:{
        type: Date,
        default: Date.now
    }
});

const Appointment = mongoose.model('Appointment', appointmentSchema);

export default Appointment;
