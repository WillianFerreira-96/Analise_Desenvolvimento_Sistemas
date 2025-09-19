import mongoose from "mongoose";

const Schema = mongoose.Schema;

const doctorSchema = new Schema({
    name: {
        type: String,
        require: [true, 'Doctor name is required.']
    },       
    login: {
        type: String,
        require: [true, 'Login is required.'],
        unique: true
    },  
    password:{
        type: String,
        require: [true, 'Password is required.'],
    },    
    medicalSpecialty:{
        type: String,
        require: [true, 'Medical Specialty is required.'],
    },
    medicalRegistration:{
        type: String,
        require: [true, 'Medical Registration(CRM) is required.'],
        unique: true
    },
    email:{
        type: String,
        require: [true, 'Email contact is required.'],
        unique: true
    },
    phone:{
        type: String,
        require: [true, 'Phone number is required.'],
        validate: {
            validator: function (v){
                return /\d{2} 9\d{4}-\d{4}/.test(v); //Formato de Regex
            },
            message: props => `${props.value} Esse número não é válido.`
        }
    },
    createdAt: {
        type: Date,
        default: Date.now
    }
});

const Doctor = mongoose.model('Doctor', doctorSchema);

export default Doctor;
