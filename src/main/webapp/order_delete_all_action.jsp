<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%


                     	OrderService orderService=new OrderService();
                     	orderService.delete("yeji2345");
                     	response.sendRedirect("order_list.jsp");
       %>


