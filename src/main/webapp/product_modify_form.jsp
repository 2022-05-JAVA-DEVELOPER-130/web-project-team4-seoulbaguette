<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int p_no=Integer.parseInt(request.getParameter("p_no"));
	ProductService productService = new ProductService();
	Product product = productService.selectByNo(p_no);
	
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