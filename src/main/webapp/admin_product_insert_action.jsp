<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String p_name=request.getParameter("p_name");
    int p_price=Integer.parseInt(request.getParameter("p_price"));
    String p_desc=request.getParameter("p_desc");
    int category_no=Integer.parseInt(request.getParameter("category_no"));
    
    ProductService productService=new ProductService();
    Product product=new Product(0,p_name,p_price,null,p_desc,0,category_no);
    try{
    productService.insert(product);
    }catch(Exception e){
    	e.printStackTrace();
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
alert("추가 완료되었습니다!");
location.href="product_detail.jsp";
</script>
</head>
<body>

</body>
</html>