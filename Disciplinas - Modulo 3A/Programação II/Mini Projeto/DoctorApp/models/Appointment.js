import mongoose from "mongoose";
import Doctor from "./Doctor.js";
import Pacient from "./Pacient.js";

const Schema = mongoose.Schema;

const appointmentSchema = new Schema({
    //Não precisa de ID, o MongoDB irá criar automaticamente o ID
    date: {
        type: Date,
        required: [true, 'Date is required.'],
    },
    doctorId: {
        type: String,
        require: [true, 'DoctorId is required.'],
        validate:{
            validator: (v)=>{
                const id = new mongoose.Types.ObjectId(v);
                return Doctor.exists({_id: id})
            },
            message: props => `DoctorID ${props.value} not found.`
        }
    },
    pacientId:{
        type: String,
        require: [true, 'PacientId is required.'],
        validate:{
            validator: (v)=>{
                const id = new mongoose.Types.ObjectId(v);
                return Pacient.exists({_id: id})
            },
            message: props => `PacientID ${props.value} not found.`
        }
    },
    createdAt:{
        type: Date,
        default: Date.now
    }
});

const Appointment = mongoose.model('Appointment', appointmentSchema);

export default Appointment;
