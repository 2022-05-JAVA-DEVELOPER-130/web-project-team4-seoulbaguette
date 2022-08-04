<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.bakery.vo.Address"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.vo.OrderItem"%>
<%@page import="com.itwill.bakery.vo.Orders"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.OrderService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
OrderService orderService = new OrderService();
List<Orders> orderList = orderService.list_detail("yeji2345");
ProductService productService = new ProductService();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>쇼핑몰 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<% for(Orders order : orderList) { %>
		
		
		주문번호: <%=order.getO_no() %><br>
		배송상태: <%=order.getO_desc() %><br>
		주문일자: <%=order.getO_date() %><br>
		총 가격: <%=order.getO_price() %><br>
		<br>
		<br>
		<% for ( OrderItem orderItemList:order.getOrderItemList()){ %>
			<% Product product = productService.selectByNo(orderItemList.getProduct().getP_no());%>
			상품명: <%=orderItemList.getProduct().getP_name() %><br>
			상품수량: <%=orderItemList.getOi_qty() %><br>
			가격: <%=orderItemList.getOi_qty() * product.getP_price() %><br>
			<br>
			<br>
			
		
		<%} %>
	<% }%>

	
	

</body>
</html>