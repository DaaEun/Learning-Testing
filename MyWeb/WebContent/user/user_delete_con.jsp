<%@page import="kr.co.jsp.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    
    	String id = (String) session.getAttribute("user_id");
    	String pw = request.getParameter("check_pw");
    	
    	int result = UserDAO.getInstance().userCheck(id, pw);
    	
    	if(result == 0) { %>
    		<script>
    			alert("비밀번호가 틀렸습니다.");
    			location.href="user_mypage.jsp";
    		</script>
    	<% } else {
    		UserDAO.getInstance().deleteUser(id); 
    		session.invalidate(); %>
    		<script>
    			alert("회원 탈퇴가 정상 처리되었습니다.");
    			location.href="user_login.jsp";
    		</script>
    	<% } %>
   			
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    