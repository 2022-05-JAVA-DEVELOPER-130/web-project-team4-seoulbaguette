<%@page import="com.itwill.bakery.vo.Address"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int add_no=Integer.parseInt(request.getParameter("add_no"));
    UserService userService=new UserService();
    Address address=new Address(add_no,null,null);
    userService.deleteAddress(address);
    
    response.sendRedirect("address_list.jsp");


    
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