// app_mysql.js
var express = require('express');
var path = require('path');
var bodyParser = require('body-parser');

// express 객체 생성
var app = express();

//라우팅 모듈 선언
var dbRouter = require('./router');

var fs = require('fs');
var mysql = require('mysql');		// node-mysql을 install하고 모듈을 불러와야한다.
var conn = mysql.createConnection({ // mysql과 connection하는 부분
    host     : 'localhost',
    user     : 'root',
    password : '123456',
    database : 'o2'
});

app.use(bodyParser.urlencoded({ extended: false }));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// request 요청 URL과 처리 로직을 선언한 router 모듈 매핑
// router 객체를 app 객체에 등록
app.use('/', dbRouter);

app.get('/topic/add', function(req, res){ //add 페이지 불러오기
    var sql = 'SELECT id,title FROM topic'; // topic의 모든 id와 title 불러오기
    conn.query(sql, function(err, topics, fields){
      if(err){
        console.log(err);
        res.status(500).send('Internal Server Error')
      }
        res.render('add', { topics: topics }); //topics라는 배열안에 JSON형식으로 데이터들이 담겨있음. topics라는 변수에 데이터를 담아 add.ejs로 넘겨준다.
    });
});

app.post('/topic/add', function(req, res){ // add.ejs에서 form태그의 post방식으로 데이터를 받는다.
    var title = req.body.title;				//	request 객체의 body객체의 title값.
    var description = req.body.description;
    var author = req.body.author;
    var sql = 'INSERT INTO topic (title, description, author) VALUES(?, ?, ?)';// INSERT 쿼리를 통해 데이터를 추가한다. VALUES의 물음표는 아래의 함수의 두번째 인자로 전달할 수 있다.
    var params = [title, description, author];// 사용자에게 request받은 값들.
    conn.query(sql, params, function(err, result, fields){ // db에 query를 날린다. 1번째 인자로 sql문과, 배열 안에 담긴 값들, 그리고 함수를 전달한다.
        if(err) {
          console.log(err); //에러가 있다면, 보안을 위해 콘솔에 err로그를 찍고,
          res.status(500).send('Internal Server Error'); //사용자에게는 err로그를 보여주지 않는다.
        }
        console.log('The file has been saved!');//데이터가 db에 잘 저장 되었다면, 콘솔에 성공이라 찍는다.
        res.redirect('/topic/'+result.insertId);//새로운 데이터가 insert될때, 자동으로 생기는 id가 있는데, query 함수의 두번째 인자인 result 객체에서 insertId라는 키로 그 값인 id를 찾을 수 있다. 그것을 통하여 새로 생긴 데이터의 화면을 바로 띄워줄 수 있다.
    });
});

app.get(['/topic/:id/edit'], function(req, res){// 수정기능
    var sql = 'SELECT id,title FROM topic';	// 일단, 글 목록을 불러온다.(edit페이지에도 글목록은 항상 존재)
    conn.query(sql, function(err, topics, fields){
      var id = req.params.id; // request받은 id값
      if(id){
        var sql = 'SELECT * FROM topic WHERE id=?';// id값을 통하여 수정하려고 하는 특정 데이터만 불러온다.
        conn.query(sql, [id], function(err, topic, fields){//[id] : 사용자로부터 받은 id
          if(err) {
            console.log(err);
            res.status(500).send('Internal Server Error');
          } else {
            res.render('edit', {topics : topics, topic : topic[0] });//topic은 배열안에 담긴 객체로 들어오기 때문에, topic[0]으로 데이터를 객체만 전달한다.(전달한 데이터를 통해서 현재 수정하려고 하는 데이터를 화면에 뿌려준다.)
          }
        });
      } else {//id가 없을 경우 반환한다.
        console.log(err);
        res.send('There is no id.');
      }
    });
});

app.post('/topic/:id/edit', function(req, res){
    var sql = 'UPDATE topic SET title=?, description=?, author=? WHERE id=?';//수정하는 쿼리문(where가 매우 중요! 없으면, 다 똑같이 수정됨 큰일남.)
    var title = req.body.title; // 사용자가 다시 입력한 title. req객체의 body객체의 title키로 접근가능
    var description = req.body.description;
    var author = req.body.author;
    var id = req.params.id;//url의 파라미터로 id 값을 얻을 수 있다.
    conn.query(sql, [title, description, author, id], function(err, result, fields){
      if(err) {
        console.log(err);
        res.status(500).send('Internal Server Error');
      } else {
        res.redirect('/topic/'+id)// 수정한 페이지로 이동
      }
    });
});

app.get('/topic/:id/delete', function(req, res){
    var sql = 'SELECT id,title FROM topic'; // 전체 글목록 보여주기
    var id = req.params.id;
    conn.query(sql, function(err, topics, fields){
      var sql = 'SELECT * FROM topic WHERE id=?'; // 선택한 글 보여주기(id값을 통하여 접근가능)
      conn.query(sql, [id], function(err, topic){
          if(err){
            console.log(err);
            res.status(500).send('Internal Sever Error');
          } else {
            if(topic.length === 0){// 선택한 글이 없다면 에러를 띄운다
              console.log('There is no record');
              res.status(500).send('Internal Sever Error');
            } else {
              res.render('delete', {topics:topics, topic:topic[0]});// delete페이지로 렌더해준다.(글 목록 객체와 삭제할 글을 넘겨줌)
            }
          }
      });
  });
});

app.post('/topic/:id/delete', function(req, res){ //form태그를 통하여 post 방식으로 데이터를 전달 받는다.
    var id = req.params.id;
    var sql = 'DELETE FROM topic WHERE id=?'; //DELETE sql문. WHERE를 빠뜨리면 조용히 집에 가야한다.
    conn.query(sql, [id], function(err, result){
      if(err) console.log(err);
      res.redirect('/topic');//데이터를 삭제한 후, 메인페이지로 리다이렉트 해준다.
    });
});

app.get(['/topic','/topic/:id'], function(req, res){//메인페이지(id값을 통하여 글 내용을 볼 수 있음)
    var sql = 'SELECT id,title FROM topic'; //전체 글목록 가져오기
    conn.query(sql, function(err, topics, fields){
      var id = req.params.id; // request받은 id값
      if(id){// 글을 선택 했을때.
        var sql = 'SELECT * FROM topic WHERE id=?';
        conn.query(sql, [id], function(err, topic, fields){//[id] : 사용자로부터 받은 id
          if(err) {
            console.log(err);
            res.status(500).send('Internal Server Error');
          } else {
            res.render('view', {topics : topics, topic : topic[0] });
          }
        });
      } else {// 글을 선택하지 않았을때.(메인페이지만 보여준다.)
        res.render('view', {topics : topics, topic : undefined })//topic의 데이터가 없어도 topic을 명시해 주지 않는다면 ejs가 오류를 낸다.
      }
    });
});

app.listen(3000, function(){
    console.log("Connected localhost:3000");
});

module.exports = app;