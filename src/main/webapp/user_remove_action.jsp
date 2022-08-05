<%@page import="com.itwill.bakery.service.UserService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@include file="user_login_check.jspf"%>  --%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("shop_main.jsp");
	return;	
} 

String userid="guard1";
UserService userService= new UserService();
try{
	userService.deleteUser(userid);
	response.sendRedirect("user_logout_action.jsp");
}catch(Exception e){
	e.printStackTrace();
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>