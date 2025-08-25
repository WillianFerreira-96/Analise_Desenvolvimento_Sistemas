import pacientRepository from "../repositories/PacientRepository.js";

const getAllPacients = async ()=>{
    return pacientRepository.getAllPacients
}

const getPacient = async (id) =>{
    return pacientRepository.getPacient(id);
}

const savePacient = async ({name, birthDate, email, phone})=>{
    return pacientRepository.savePacient({name, birthDate, email, phone});
}

const updatePacient = async (id, {name, birthDate, email, phone})=>{
    return  pacientRepository.updatePacient(id, {name, birthDate, email, phone});
}

const deletePacient = async (id) =>{
    return await pacientRepository.deletePacient(id);
}

const pacientService = {
    getAllPacients,
    getPacient,
    savePacient,
    updatePacient,
    deletePacient
}

export default pacientService;