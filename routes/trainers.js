var express = require('express');
var router = express.Router();
var dbconnection = require('../lib/db');
var Trainer = require('../models/trainer');

router.get('/', function (req, res, next) {
    const query = 'SELECT * FROM trainers';
    // console.log("outside" + req.params.message);
    dbconnection.query(query, function (err, rows) {
        // console.log("inside" + req.params.message);
        if (err) {
            res.render('trainers', {
                title: 'Trainers - ERROR',
                courses: '',
                message: req.params.message,
            });
        } else {
            res.render('trainers', {
                title: 'Trainers',
                trainers: rows,
                message: req.params.message,
            });
        }
    });
});

module.exports = router;
