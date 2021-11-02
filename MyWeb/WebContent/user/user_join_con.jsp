<%@page import="kr.co.jsp.user.model.UserVO"%>
<%@page import="kr.co.jsp.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		UserDAO dao = UserDAO.getInstance();
		
		if(dao.confirmId(id)) { %>
			<script>
				alert("아이디가 중복되었습니다.");
				history.back();
			</script>
		<% } else { //이미 가입된 회원이 아닐 경우
			UserVO vo = new UserVO(id, pw, name, email, address);
			dao.insertUser(vo); %>
			<script>
				alert("회원가입을 축하합니다!");
				location.href="user_login.jsp";
			</script>
			
		<% } %>
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	