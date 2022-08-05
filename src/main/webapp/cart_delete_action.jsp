<%@page import="com.itwill.bakery.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
CartService cartService = new CartService();
String user_id="yeji2345";
cartService.deleteCartByUserId(user_id);
response.sendRedirect("cart_view_select_update_qyt_all_check_delete_image.jsp");
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