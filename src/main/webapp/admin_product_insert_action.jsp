<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String saveDirectory = "C:/00.JAVA/gitrepository/web-project-team4-seoulbaguette/src/main/webapp/image";
int maxPostSize = 1024 * 1024 * 100;
String encoding = "UTF-8";

MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding,
		new DefaultFileRenamePolicy());

String p_name = request.getParameter("p_name");
String p_desc = request.getParameter("p_desc");
int category_no = Integer.parseInt(request.getParameter("category_no"));
int p_price = Integer.parseInt(request.getParameter("price"));
String p_image= multipartRequest.getParameter("p_image");

ProductService productService = new ProductService();
Product product = new Product(0, p_name, p_price, p_image, p_desc, 0, category_no);
try {
	
	productService.insert(product);
} catch (Exception e) {
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
	location.href = "product_detail.jsp";
</script>
</head>
<body>

</body>
</html>