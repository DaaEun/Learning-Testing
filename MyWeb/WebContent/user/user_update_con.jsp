<%@page import="kr.co.jsp.user.model.UserDAO"%>
<%@page import="kr.co.jsp.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	
    	request.setCharacterEncoding("utf-8");
    
    	UserVO vo = new UserVO();
    	
    	String id = (String) session.getAttribute("user_id");
    	vo.setId(id);
    	vo.setName(request.getParameter("name"));
    	vo.setEmail(request.getParameter("email"));
    	vo.setAddress(request.getParameter("address"));
    	
    	UserDAO.getInstance().updateUser(vo);
    	session.setAttribute("user_name", request.getParameter("name"));
    	%>
    	<script>
    		alert("회원 정보가 수정되었습니다.");
    		location.href="user_mypage.jsp";
    	</script>
    	
    	
    	
   

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    