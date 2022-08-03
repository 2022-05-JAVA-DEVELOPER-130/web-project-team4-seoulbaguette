<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="user_login_check.jspf" %> 
 --%>
 <%
 String user_id="juhee13";
 UserService userService=new UserService();
 User user=userService.selectUser(user_id); 
 
 int p_no=13;
 ProductService productService=new ProductService();
 Product product=productService.selectByNo(p_no);
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성 폼</title>
</head>
<body>
<form name="f" method="post" action="review_write_action.jsp">
리뷰 상품명 : <%=product.getP_name() %>
<br>
리뷰 제목:<input type="text" name="r_title" value="리뷰제목"/> 
<br>
작성자: <%=user.getUser_name() %> (<%=user.getUser_id() %>) <br>
별점 : <input type="number" name="r_stargrade" value="5" min="1" max="5"> 
리뷰내용 : <input type="text" name="r_content" value="리뷰내용"/> <br>
<input type ="submit" value="작성" >
</form>

</body>
</html>