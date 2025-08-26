import mongoose from "mongoose";

const Schema = mongoose.Schema;

const prescriptionSchema = new Schema({
    date: {
        type: Date,
        required: [false, 'Date of prescriptio is required.']
    },
    appointmentId:{
        type: String,
        require: [true, 'Appointment ID is required.']
    },
    medicine: {
        type: String,
        require: [true, 'Medicine is required.'],
    },
    dosage: {
        type: String,
        require: [true, 'Dosage is required.'],
    },
    instructions: {
        type: String
    },
    createdAt: {
        type: Date,
        default: Date.now
    }
});

const Prescription = mongoose.model('Prescription', prescriptionSchema);

export default Prescription;
