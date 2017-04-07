var express = require('express');
var Promise = require('bluebird');

var users = require('./routers/users');

var app = express();

app.use('/users', users);

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`);
  console.log('Press Ctrl+C to quit.');
});

