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

router.get('/new/', function (req, res, next) {
    res.render('new_trainer', { message: '' });
});

router.post('/new/', function (req, res, next) {
    let trainer = new Trainer(
        req.body.trainer_first_name,
        req.body.trainer_last_name,
        req.body.trainer_subject
    );
    const query = `INSERT INTO trainers(first_name, last_name,subject) VALUES('${trainer.first_name}', '${trainer.last_name}', '${trainer.subject}');`;
    dbconnection.query(query, function (err, status) {
        // NOT OK - Error!!!
        if (err) {
            res.render('new_trainer', {
                message: 'Error inserting data to the database!',
            });
        }
        // All OK!!!
        else {
            //res.render("books", { title: 'Books', books: '', message: "All ok!!!" });
            // res.render("books", {});
            res.redirect('/trainers/');
        }
    });
});

module.exports = router;
