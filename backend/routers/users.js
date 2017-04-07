var express = require('express');
var router = express.Router();
var dbModel = require('../lib/database');

router.get('/:user_id', function(req, res) {
	dbModel.getUser(req.params.user_id, function(err, result) {
		res.end(JSON.stringify(result));
	});
});

router.get('/:user_id/contacts', function(req, res) {
	console.log('/:user_id/contacts');
	dbModel.getContacts(req.params.user_id, function(err, result) {
		res.end(JSON.stringify(result));
	});
})

router.get('/:user_id/contacts/:contact_id/entries', function(req, res) {
	res.end(req.params);
});

router.get('/:user_id/contacts/:contact_id/entries/:entry_id', function(req, res) {
	res.end(req.params);
})

module.exports = router;