<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.vo.Cart"%>
<%@page import="com.itwill.bakery.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%>
<%
	if (request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("cart_list.jsp");
		return;
	}
	String user_id="";
	String cart_qtyStr = request.getParameter("cart_qty");
	String p_noStr = request.getParameter("p_no");
	CartService cartService = new CartService();
	cartService.CreateCart(user_id,Integer.parseInt(p_noStr),Integer.parseInt(cart_qtyStr));
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