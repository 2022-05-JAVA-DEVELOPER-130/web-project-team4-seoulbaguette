<%@page import="com.itwill.bakery.vo.Cart"%>
<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@page import="com.itwill.bakery.service.CartService"%>
<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<%
	OrderService orderService = new OrderService();
	
	String buyType1 = "cart"; 
	String buyType2 = "cart_select"; 
	String buyType3 = "direct";
	String p_noStr = "2";
	String p_qtyStr = "3";
	String[] cart_item_noStr_array = {"1","2"};
	
	if(buyType1 ==null)buyType1 ="";
	if(buyType2 ==null)buyType2 ="";
	if(buyType3 ==null)buyType3 ="";
	if(p_noStr==null)p_noStr="";
	if(p_qtyStr==null)p_qtyStr="";
	
	CartService cartService = new CartService();
	UserService userService = new UserService();
	ProductService productService = new ProductService();

	ArrayList<Cart> cartItemList = new ArrayList<Cart>();
	User user = userService.selectUser("two");
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