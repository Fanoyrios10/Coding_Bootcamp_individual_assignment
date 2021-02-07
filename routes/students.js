var express = require('express');
var router = express.Router();
var dbconnection = require('../lib/db');
var Student = require('../models/student');

router.get('/', function (req, res, next) {
    const query = 'SELECT * FROM students';
    // console.log("outside" + req.params.message);
    dbconnection.query(query, function (err, rows) {
        // console.log("inside" + req.params.message);
        if (err) {
            res.render('students', {
                title: 'Students - ERROR',
                courses: '',
                message: req.params.message,
            });
        } else {
            res.render('students', {
                title: 'Students',
                students: rows,
                message: req.params.message,
            });
        }
    });
});

module.exports = router;
