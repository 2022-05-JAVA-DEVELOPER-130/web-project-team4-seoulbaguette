<%@page import="com.itwill.bakery.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%> 
<%
	CartService cartService=new CartService();
	String user_id="";
	String p_noStr=request.getParameter("p_no");
	String cart_noStr=request.getParameter("cart_no");
	String cart_qtyStr=request.getParameter("cart_qty");
	if(cart_qtyStr.equals("0")){
		cartService.deleteCartByCNo(Integer.parseInt(cart_noStr));
	}else{
		cartService.updateQtyByPNo(user_id,Integer.parseInt(p_noStr),Integer.parseInt(cart_qtyStr));
	}
%>

<%


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