<%@page import="kr.co.jsp.user.model.UserVO"%>
<%@page import="kr.co.jsp.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%
	
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
	
	int result = dao.userCheck(id, pw);
	
	if(result == -1) { %>
		<script>
			alert("아이디가 존재하지 않습니다.");
			location.href="user_join.jsp";
		</script>
	<% } else if(result == 0) { %>
		<script>
			alert("비밀번호가 틀렸습니다.");
			history.back();
		</script>
	<% } else { //로그인 성공
		
		UserVO vo = dao.getUserInfo(id);
		
		session.setAttribute("user_id", id);
		session.setAttribute("user_name", vo.getName());
		response.sendRedirect("user_mypage.jsp");
	}
	%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	