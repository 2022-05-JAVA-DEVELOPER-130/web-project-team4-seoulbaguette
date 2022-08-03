<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.Cart"%>
<%@page import="com.itwill.bakery.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%> 

<%
	CartService cartService = new CartService();
	ProductService productService = new ProductService();
	Product product = productService.selectByNo(2);
	Cart cart = new Cart(0,2,product,"one");
	cartService.CreateCart(cart);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		상품 수량: <%=cart.getCart_qty() %><br>
		상품 이름: <%=cart.getProduct().getP_name() %><br>
		상품 가격: <%=cart.getProduct().getP_price() %><br>
		상품 설명: <%=cart.getProduct().getP_desc() %><br>
		주문 아이디: <%=cart.getUser_id() %><br>
		<br>
		<br>
		

</body>
</html>