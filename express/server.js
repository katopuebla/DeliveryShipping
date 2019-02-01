//'use strict';

var express = require("express");

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

var app = express();
const cors = require('cors')
app.use(cors())

app.get("/url", (req, res, next) => {
 res.json(["Tony","Lisa","Michael","Ginger","Food"]);
});

var bodyParser = require('body-parser');
app.use(bodyParser.json()); // soporte para bodies codificados en jsonsupport
app.use(bodyParser.urlencoded({ extended: true })); // soporte para bodies codificados

const db = require('./database')
app.use('/delivery', db)

app.get('/', function(req, res) {
  res.send('Hello from server is working')
})

//Ejemplo: GET http://localhost:8080/items
app.get('/items', function(req, res, next) {
  if(req.query.filter) {
   next();
   return;
  }
  res.send('Get all');
});
 
//Ejemplo: GET http://localhost:8080/items?filter=ABC
app.get('/items', function(req, res) {
  var filter = req.query.filter;
  res.send('Get filter ' + filter);
});
 
//Ejemplo: GET http://localhost:8080/items/10
app.get('/items/:id', function(req, res, next) {
  var itemId = req.params.id;
  res.send('Get ' + req.params.id);
});
 
//Ejemplo: POST http://localhost:8080/items
app.post('/items', function(req, res) {
   var data = req.body.data;
   res.send('Add ' + data);
});
 
//Ejemplo: PUT http://localhost:8080/items
app.put('/items', function(req, res) {
   var itemId = req.body.id;
   var data = req.body.data;
   res.send('Update ' + itemId + ' with ' + data);
});
 
//Ejemplo: DELETE http://localhost:8080/items
app.delete('/items/:id', function(req, res) {
   var itemId = req.params.id;
   res.send('Delete ' + itemId);
});

//app.listen(3000, () => {
// console.log("Server running on port 3000");
//});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);	