var express = require('express');
var router = express.Router();
var dbconnection = require('../lib/db');

router.get('/', function (req, res, next) {
    const query = 'SELECT * FROM assignments';
    dbconnection.query(query, function (err, rows) {
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

router.get('/assignments_courses/', function (req, res, next) {
    const query =
        'SELECT assignments.title AS assignments_title,assignments.description,courses.title FROM assignments JOIN courses_assignments ON assignments.idassignments=courses_assignments.idassignments JOIN courses ON courses.idcourse=courses_assignments.idcourses;';
    dbconnection.query(query, function (err, rows) {
        console.log(rows);
        res.render('assignments_courses', {
            title: 'Assignment for each course',
            assignments: rows,
        });
    });
});

module.exports = router;
