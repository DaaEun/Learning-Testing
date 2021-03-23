// /router/board.js
var express = require('express');
var router = express.Router();

router.get('/', function (req,res) {
    res.send('This is board list');
});

router.get('/write', function (req, res) {
   res.send('This is board write');
});

router.get('/detail', function (req, res) {
    res.send('This is board detail');
});

router.get('/update', function (req, res) {
    res.send('This is board update');
});

module.exports = router;