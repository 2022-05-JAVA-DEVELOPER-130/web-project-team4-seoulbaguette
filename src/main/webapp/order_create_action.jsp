<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%
 	OrderService orderService = new OrderService();
 	// 상품페이지에서 바로 주문
	//            sUserId, p_no, oi_qty, add_no
 	//orderService.create("two", 4, 5, 3);
 	
 	//카트 전체 주문
 	//orderService.create("two");
 	
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