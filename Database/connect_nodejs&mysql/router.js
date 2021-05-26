var express = require('express');
var mysql = require('mysql');
var router = express.Router();

var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '123456',
    database : 'o2'
});

// connection.connect();

var sql = 'SELECT * FROM topic';
connection.query(sql, function (err, rows, fields) {
  if (err) console.log(err);
  console.log('rows', rows); //row는 배열이다.
  console.log('fields', fields); //fields는 컬럼을 의미한다.
});

// connection.end();//접속이 끊긴다.

module.exports = router;