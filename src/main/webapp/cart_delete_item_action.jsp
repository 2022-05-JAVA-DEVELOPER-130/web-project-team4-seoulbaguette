<%@page import="com.itwill.bakery.vo.Cart"%>
<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String cart_noStr=request.getParameter("cart_no");
CartService cartService = new CartService();
cartService.deleteCartByCNo(Integer.parseInt(cart_noStr));
response.sendRedirect("cart_view.jsp");
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