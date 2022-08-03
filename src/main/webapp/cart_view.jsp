<%@page import="com.itwill.bakery.vo.Cart"%>
<%@page import="com.itwill.bakery.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%

	CartService cartService = new CartService();
	Cart cart=cartService.selectCart(4);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		카트번호: <%=cart.getCart_no() %><br>
		상품 수량: <%=cart.getCart_qty() %><br>
		상품: <%=cart.getProduct().getP_name()%><br>
		상품 가격:<%=cart.getProduct().getP_price() %><br>
		상품 설명:<%=cart.getProduct().getP_desc() %><br>		
		주문자 아이디:<%=cart.getUser_id()%><br>
		<br>
		<br>
</body>
</html>