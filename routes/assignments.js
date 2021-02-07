var express = require('express');
var router = express.Router();
var dbconnection = require('../lib/db');

router.get('/', function (req, res, next) {
    const query = 'SELECT * FROM assignments';
    // console.log("outside" + req.params.message);
    dbconnection.query(query, function (err, rows) {
        // console.log("inside" + req.params.message);
        if (err) {
            res.render('assignments', {
                title: 'Assignments - ERROR',
                assignments: '',
                message: req.params.message,
            });
        } else {
            res.render('assignments', {
                title: 'Assignments',
                assignments: rows,
                message: req.params.message,
            });
        }
    });
});

module.exports = router;
