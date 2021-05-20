var mysql2 = require('mysql2');

var connection = mysql2.createConnection({
  host: 'ra1.anystream.eu',
  user: 'root',
  password: 'Maria1060@',
  database: 'ind_project_school',
  port: 1060,
});

connection.connect(function (error) {
  if (error) {
    console.log(error);
  } else {
    console.log('Connected!');
  }
});

module.exports = connection;
