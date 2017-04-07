var mysql = require('mysql');

var config = {
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE
};

if (process.env.INSTANCE_CONNECTION_NAME) {
  config.socketPath = `/cloudsql/${process.env.INSTANCE_CONNECTION_NAME}`;
}

const connection = mysql.createConnection(config);

connection.connect(connectionErrorHandler);

function getUser(id, cb) {
	connection.query('SELECT * FROM users WHERE id = ' + id, function(err, results, fields) {
		cb(err, results[0]);
	});
}

function getContacts(id, cb) {
	connection.query('SELECT * FROM contacts WHERE user_id = ' + id, function(err, results, fields) {
		cb(err, results);
	});
}

function connectionErrorHandler(err) {
	if(err) {
	    console.log(err);    
	}
}

module.exports = {
	getUser: getUser,
	getContacts: getContacts
}