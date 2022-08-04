<%@page import="com.itwill.bakery.service.UserService"%>
<%@page import="com.itwill.bakery.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id=request.getParameter("user_id");
	String user_password=request.getParameter("user_password");

	UserService userService = new UserService();
	int result=userService.login(user_id, user_password);
	
	/*
	 
	 * 0:아이디 존재 안함
	 * 1:로그인성공
	 * 2:패스워드 불일치
	 */
	 if(result==1){
		 session.setAttribute("user_id", user_id);
		 response.sendRedirect("main.jsp");
	 }else if(result==0){
		 response.sendRedirect("user_login_form.jsp");
			out.println("<script>");
			out.println("alert('"+user_id+" 는 존재하지않는 아이디입니다');");
			out.println("location.href='user_login_form.jsp';");
			out.println("</script>");
	 }else if(result==2){
		 response.sendRedirect("user_login_form.jsp");
		  out.println("<script>");
			out.println("alert('비밀번호가 일치하지않습니다.');");
			out.println("location.href='user_login_form.jsp';");
			out.println("</script>");
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