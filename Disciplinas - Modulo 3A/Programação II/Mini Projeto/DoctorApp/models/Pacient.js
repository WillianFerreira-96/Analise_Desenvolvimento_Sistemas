import mongoose from "mongoose";

const Schema = mongoose.Schema;

const pacientSchema = new Schema({
    name: {
        type: String,
        require: [true, 'Pacient name is required.']
    },
    birthDate: {
        type: Date,
        required: [true, 'Date of birth is required.']
    },
    email:{
        type: String,
        require: [true, 'Email contact is required.'],
        unique: true
    },
    phone:{
        type: String,
        require: [true, 'Phone number is required.'],
    },
    createdAt: {
        type: Date,
        default: Date.now
    }
});

const Pacient = mongoose.model('Pacient', pacientSchema);

export default Pacient;
