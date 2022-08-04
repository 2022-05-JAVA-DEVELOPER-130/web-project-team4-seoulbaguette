<%@page import="com.itwill.bakery.service.CartService"%>
<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%
 String buyType=request.getParameter("buyType");
	String p_noStr=request.getParameter("p_no");
	String p_qtyStr=request.getParameter("p_qty");
	String[] cart_item_no_strArray=request.getParameterValues("cart_item_no");
	OrderService orderService=new OrderService();
	CartService cartService=new CartService();
	if(buyType.equals("cart")){
		orderService.create("yeji2345");
	}else if(buyType.equals("cart_select")){
		orderService.create("yeji2345",cart_item_no_strArray);	
 }else if(buyType.equals("direct")){
		orderService.create("yeji2345", Integer.parseInt(p_noStr), Integer.parseInt(p_qtyStr),7);
	}
	response.sendRedirect("order_list.jsp");
 	
 %>
