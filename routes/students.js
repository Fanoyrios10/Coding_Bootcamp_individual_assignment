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

router.get('/new/', function (req, res, next) {
    res.render('new_student', { message: '' });
});

router.get('/new/succesfull/', function (req, res, next) {
    const query = 'SELECT * FROM students ORDER BY idstudents DESC LIMIT 1';
    dbconnection.query(query, function (err, rows) {
        console.log(rows);
        res.render('new_student_succes', {
            students: rows,
            message:
                'Succesfull insertion of student in the database. Below is the registration along with the Personal ID.',
        });
    });
});

router.post('/new/', function (req, res, next) {
    let student = new Student(
        req.body.student_first_name,
        req.body.student_last_name,
        req.body.student_date_of_birth,
        req.body.student_tutition_fee
    );
    const query = `INSERT INTO students(first_Name, last_name,date_of_birth,tutition_Fees) VALUES('${student.first_name}', '${student.last_name}', '${student.date_of_birth}','${student.tutition_Fees}');`;
    dbconnection.query(query, function (err, status) {
        // NOT OK - Error!!!
        if (err) {
            res.render('new_student', {
                message: 'Error inserting data to the database!',
            });
        }
        // All OK!!!
        else {
            //res.render("books", { title: 'Books', books: '', message: "All ok!!!" });
            // res.render("books", {});
            res.redirect('/students/new/succesfull/');
        }
    });
});

module.exports = router;
