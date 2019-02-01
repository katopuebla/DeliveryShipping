const mongoose = require('mongoose')

const schema = mongoose.Schema
const loginSchema = new schema({
    userId: String,
 	name: String,
    password: String,
	system: String,
})
module.exports = mongoose.model('login',loginSchema, 'logins')
