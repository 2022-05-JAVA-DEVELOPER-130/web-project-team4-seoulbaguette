<%@page import="com.itwill.bakery.vo.Orders"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="user_login_check.jspf" %> 

<%
OrderService orderService = new OrderService();
List<Orders> orderList = orderService.list("three");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% for(Orders order : orderList) { %>
	<li>주문번호:<%=order.getO_no() %></li>
	<% }%>
	

</body>
</html>