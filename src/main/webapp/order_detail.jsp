<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.OrderItem"%>
<%@page import="com.itwill.bakery.vo.Orders"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%> 

<%

OrderService orderService = new OrderService();
Orders orders = orderService.detail("two", 39);
ProductService productService = new ProductService();




%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		주문번호: <%=orders.getO_no() %><br>
		배송상태: <%=orders.getO_desc() %><br>
		주문일자: <%=orders.getO_date() %><br>
		총 가격: <%=orders.getO_price() %><br>
		<br>
		<br>
		<% for ( OrderItem orderItemList:orders.getOrderItemList()){ %>
			<% Product product = productService.selectByNo(orderItemList.getProduct().getP_no());%>
			상품명: <%=orderItemList.getProduct().getP_name() %><br>
			상품수량: <%=orderItemList.getOi_qty() %><br>
			가격: <%=orderItemList.getOi_qty() * product.getP_price() %><br>
			<br>
			<br>
			
		
		<%} %>
		<br>
		<br>


</body>
</html>