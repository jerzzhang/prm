var mysql = require('mysql');

var prodConfig = {
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE
};

if (process.env.INSTANCE_CONNECTION_NAME) {
  prodConfig.socketPath = `/cloudsql/${process.env.INSTANCE_CONNECTION_NAME}`;
}

var connection;

if (process.env.NODE_ENV === "production") {
	connection = mysql.createConnection(prodConfig);
} else {
	connection = mysql.createConnection({
		host     : '35.184.121.250',
		user     : 'root',
		password : 'jeremy1234',
		database : 'prmdb'
	});
}

connection.connect(connectionErrorHandler);

function getUser(id, cb) {
	connection.query('SELECT * FROM users WHERE id = ' + id, function(err, results, fields) {
		cb(err, results[0]);
	});
}

function getContacts(id, cb) {
	connection.query('SELECT * FROM contacts WHERE user_id = ' + id + ' ORDER BY last_name, first_name', function(err, results, fields) {
		cb(err, results);
	});
}

function postContact(id, firstName, lastName, phoneNumber, email, location, company, position, cb) {
	firstName = firstName ? firstName : 'NULL';
	lastName = lastName ? lastName : 'NULL';
	phoneNumber = phoneNumber ? phoneNumber : 'NULL';
	email = email ? email : 'NULL';
	location = location ? location : 'NULL';
	company = company ? company : 'NULL';
	position = position ? position : 'NULL';

	connection.query('INSERT INTO contacts (user_id, first_name, last_name, phone_number, email, location, company, position) VALUES (\'' + id + '\', \'' + firstName + '\', \'' + lastName + '\', \'' + phoneNumber + '\', \'' + email + '\', \'' + location + '\', \'' + company + '\', \'' + position + '\')', function(err, results, fields) {
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
	getContacts: getContacts,
	postContact: postContact
}