<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userid="guard1";
    String user_password=request.getParameter("user_password");
    String user_name=request.getParameter("user_name");
    String user_email=request.getParameter("user_email");
    String user_phone=request.getParameter("user_phone");
    UserService userService=new UserService();
    User user=new User(userid,user_password,user_name,user_email,user_phone,0,null);
    
    userService.updateUser(user);
    response.sendRedirect("user_view.jsp");
    
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