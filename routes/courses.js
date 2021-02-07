var express = require('express');
var router = express.Router();
var dbconnection = require('../lib/db');

router.get('/', function (req, res, next) {
    const query = 'SELECT * FROM courses';
    // console.log("outside" + req.params.message);
    dbconnection.query(query, function (err, rows) {
        // console.log("inside" + req.params.message);
        if (err) {
            res.render('courses', {
                title: 'Courses - ERROR',
                courses: '',
                message: req.params.message,
            });
        } else {
            res.render('courses', {
                title: 'Courses',
                courses: rows,
                message: req.params.message,
            });
        }
    });
});

module.exports = router;
