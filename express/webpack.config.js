var path = require('path');
 
module.exports = {
// the main source code file
  entry: './server.js',                   
  output: {
// the output file name
    filename: 'server.js',
// the output path               
    path: path.resolve(__dirname, 'dist')
  }
};