var express = require('express');
var router = express.Router();
var dbconnection = require('../lib/db');

router.get('/', function (req, res, next) {
    const query = 'SELECT * FROM courses';
    dbconnection.query(query, function (err, rows) {
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

router.get('/courses_trainers/', function (req, res, next) {
    const query =
        'SELECT courses.title,trainers.first_Name,trainers.last_name FROM courses JOIN courses_trainers ON courses.idcourse=courses_trainers.idcourses JOIN trainers ON trainers.idtrainer=courses_trainers.idtrainers;';
    dbconnection.query(query, function (err, rows) {
        res.render('courses_trainers', {
            title: 'Courses for Trainers',
            courses: rows,
        });
    });
});

module.exports = router;
