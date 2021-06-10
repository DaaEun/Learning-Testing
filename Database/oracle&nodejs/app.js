var oracledb = require('oracledb');
var dbConfig = require("./conf/dbconfig");
// Express 기본 모듈 불러오기
var express = require('express')
  , http = require('http')
  , path = require('path');

// 익스프레스 객체 생성
var app = express();
 



// 기본 속성 설정
app.set('port', process.env.PORT || 3000);

// body-parser
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());

// 라우터 객체 참조
var router = express.Router();

// Oracle Auto Commit 설정
oracledb.autoCommit = true;

// 데이터 조회 처리
router.post('/dbTestSelect', function(request, response){

    oracledb.getConnection({
        user            : dbConfig.user,
        password        : dbConfig.password,
        connectString   : dbConfig.connectString
    },
    function(err, connection) {
        if (err) {
            console.error(err.message);
            return;
        }

        let query = 
            'select * ' +
            '   from emp';

        connection.execute(query, [], function (err, result) {
            if (err) {
                console.error(err.message);
                doRelease(connection);
                return;
            }
            console.log(result.rows);                   // 데이터
            doRelease(connection, result.rows);         // Connection 해제
        });
    });    

    // DB 연결 해제
    function doRelease(connection, rowList) {
        connection.release(function (err) {
            if (err) {
                console.error(err.message);
            }

            // DB종료까지 모두 완료되었을 시 응답 데이터 반환
            console.log('list size: ' + rowList.length);
            
            response.send(rowList);
        });
    }
});


// 데이터 입력 처리
router.post('/dbTestInsert', function(request, response){

    oracledb.getConnection({
        user            : dbConfig.user,
        password        : dbConfig.password,
        connectString   : dbConfig.connectString
    },
    function(err, connection) {
        if (err) {
            console.error(err.message);
            return;
        }

        // PrepareStatement 구조
        let query = 
            'INSERT INTO LOCAL(LOCALNO, LOCALNAME) ' +
              'VALUES( :LOCALNO, :LOCALNAME)';

        let binddata = [
            'LOCAL08',
            '다은마을'        
        ];

        connection.execute(query, binddata, function (err, result) {
            if (err) {
                console.error(err.message);
                doRelease(connection);
                return;
            }
            console.log('Row Insert: ' + result.rowsAffected);

            doRelease(connection, result.rowsAffected);         // Connection 해제
        });
    });    

    // DB 연결 해제
    function doRelease(connection, result) {
        connection.release(function (err) {
            if (err) {
                console.error(err.message);
            }

            // DB종료까지 모두 완료되었을 시 응답 데이터 반환
            response.send(''+result);
        });
    }
});

// 라우터 객체를 app 객체에 등록
app.use('/', router);
 
 
// 등록되지 않은 패스에 대해 페이지 오류 응답
app.all('*', function(req, res) {
    res.status(404).send('<h1>ERROR - 페이지를 찾을 수 없습니다.</h1>');
});
 
 
// Express 서버 시작
http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});