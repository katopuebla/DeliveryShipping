const mongoose = require('mongoose')

const schema = mongoose.Schema
const EnvioSchema = new schema({
	guiaSqId: String,
	remitenteSchema: [{
	Id: Number,
	apellidoMaterno: String,
	apellidoPaterno: String,
	ciudad: String,
	codigoPostal: String,
	delegMunicipio: String,
	direccion: String,
	email: String,
	estado: String,
	nombre: String,
	pais: String,
	rfc: String,
	telefono: String,
	}],
    peso: Number,
    alto: Number,
    ancho: Number,
    largo: Number,
    servicio: String,
})
module.exports = mongoose.model('envio',EnvioSchema, 'envio')
/*
const RemitenteSchema = new schema({
	Id: Number,
	apellidoMaterno: String,
	apellidoPaterno: String,
	ciudad: String,
	codigoPostal: String,
	delegMunicipio: String,
	direccion: String,
	email: String,
	estado: String,
	nombre: String,
	pais: String,
	rfc: String,
	telefono: String
})
module.exports = mongoose.model('remitente',RemitenteSchema, 'remintente')

const ConsignatarioSchema = new schema({
	Id: Number,
	apellidoMaterno: String,
	apellidoPaterno: String,
	ciudad: String,
	codigoPostal: String,
	delegMunicipio: String,
	direccion: String,
	email: String,
	estado: String,
	nombre: String,
	pais: String,
	rfc: String,
	telefono: String
})
module.exports = mongoose.model('consignatario',ConsignatarioSchema, 'consignatario')

const ServicioSchema = new schema({
	descripcion: String,
	tarifa: Number
})
module.exports = mongoose.model('servicio',ServicioSchema, 'servicio')
*/