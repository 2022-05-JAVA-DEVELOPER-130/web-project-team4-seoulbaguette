<%@page import="com.itwill.bakery.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CartService cartService=new CartService();
	String user_id="yeji2345";
	String p_noStr=request.getParameter("p_no");
	String cart_noStr=request.getParameter("cart_no");
	int cart_qtyStr= Integer.parseInt(request.getParameter("cart_qty"));
	if(cart_qtyStr <= 0){
		cartService.deleteCartByCNo(Integer.parseInt(cart_noStr));
		response.sendRedirect("cart_view_select_update_qty_all.jsp");
	}else{
		cartService.updateQtyByPNo(user_id, Integer.parseInt(p_noStr), cart_qtyStr);
		response.sendRedirect("cart_view_select_update_qty_all.jsp");
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