const express = require('express')
const mongoose = require('mongoose');

// const jwt = require('jsonwebtoken')
const router = express.Router()


router.get('/', (req, res) => {
    res.send('From API route')
})

//   Mongo DB with mongoose js
const Login = require('./model/login')
const Envio = require('./model/envio')

// const MONGO_URI = process.env.DEV_DB;
//const MONGO_URI = 'mongodb://kato:kato123@ds045679.mlab.com:45679/katobase';
const MONGO_URI = 'mongodb://delivery-mongodb:27017/katobase'; // local db
//const MONGO_URI = 'mongodb://localhost:27017/katobase'; // local db

mongoose.Promise = global.Promise;

// Connect to MongoDB
mongoose.connect(MONGO_URI)
.then(() => {
  console.log('conectado')
}, err =>{
  console.log('falla en la conexion');
  console.log(err.stack);
  
});

/*
function verifyToken(req, res, next) {
    if(!req.headers.authorization) {
        return res.status(401).send('Unauthorized request')
    }
    let token = req.headers.authorization.split(' ')[1]
    if (token == 'null') {
        return res.status(401).send('Unauthorized request')
    }
    let payload = jwt.verify(token, 'secretKey')
    if(!payload) {
        return res.status(401).send('Unauthorized request')
    }
    req.userId = payload.subject
    next()
}
*/

router.post('/register', (req, res) => {
    let userData = req.body
    console.log(userData);
    let login = new Login(userData)
    console.log(login);
    login.save((error, result) => {
        if(error) {
            console.log(error)
        } else {
            //let payload = { subject: registeredUser._id}
            //let token = jwt.sign(payload,'secretKey')
			let user = result.name;
            res.status(200).send({user})
        }
    })
}) 

router.post('/login', (req, res) => {
    let reqUser = req.body;
	console.log(reqUser);
	//res.send('hello ' + req.params.userId + '!');
    Login.findOne({userId: reqUser.userId}, function (error, result){
        if(error) {
            console.log(error)
			return error;
        } else {
            if(!result){
                res.status(401).send('Invalid user Id')
            } else {
                if(result.password !== reqUser.password) {
                    res.status(401).send('Invalid password')
				} else if(result.system !== reqUser.system) {
                    res.status(401).send('Invalid system')
                } else {
                    //let payload = { subject: user._id}
                    //let token = jwt.sign(payload,'secretKey')
                    let user = result.name;
					//res.status(200).send({user})
					res.json(user)
                }
            }
        }
    })
}) 

router.get('/logins', (req, res, next) => {
    let reqUserId = req.params.userId;
	console.log(reqUserId);
	//res.send('hello ' + req.params.userId + '!');
	Login.find( function (error, result){
		if(error) {
			console.log(error)
			return next(error);
		} else {
			res.json(result)
		}
    })
}) 


router.post('/saveEnvio', (req, res) => {
    let data = req.body
	console.log(data)
	let envio = new Envio();
	envio.guiaSqId = "1234567890";
	envio.peso = data.peso;
    envio.alto = data.alto;
    envio.ancho = data.alto;
    envio.largo = data.largo;
	if(data.mismodia == true)
		envio.servicio = "mismodia";
	else
		envio.servicio = "diasiguiente";
	
    Envio.create(envio, (error, result) => {
        if(error) {
            console.log(error)
        } else {
			let guia = result.guiaSqId;
            res.status(200).send({guia})
        }
    })
}) 

router.get('/events', (req, res) => {
    let events = [
        {
            "_id": "1",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "2",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "3",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "4",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "5",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "6",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        }
    ]
    res.json(events)
})
/*
router.get('/special', verifyToken, (req, res) => {
    let events = [
        {
            "_id": "1",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "2",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "3",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "4",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "5",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        },
        {
            "_id": "6",
            "name": "Auto Expo",
            "description": "lorem ipsum",
            "date": "2012-04-23T18:25:43.511Z"
        }
    ]
    res.json(events)
})
*/
module.exports = router
