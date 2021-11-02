<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../include/header.jsp"/>
	
	<div align="center" style="margin-bottom: 20px;">
		<h3>현재 비밀번호를 입력하세요.</h3>
		<hr>
		
		<form action="user_delete_con.jsp" method="post" role="form" class="form-inline">
        <div class="form-group">
            <input type="password" name="check_pw" class="form-control" placeholder="현재 비밀번호"
            style="width: 225px">
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary" onclick="return confirm('정말 삭제하시겠습니까?')"> 확인</button>
        </div>
         <div class="form-group">
            <button type="button" class="btn btn-danger" onclick="location.href='user_mypage.jsp'"> 취소</button>
        </div>

    </form>

	</div>
	<jsp:include page="../include/footer.jsp"/>

</body>
</html>