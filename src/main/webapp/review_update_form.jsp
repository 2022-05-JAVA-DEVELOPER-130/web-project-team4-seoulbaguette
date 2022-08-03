<%@page import="com.itwill.bakery.vo.Review"%>
<%@page import="com.itwill.bakery.service.ReviewService"%>
<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="user_login_check.jspf" %>  --%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("review_list_product.jsp");
	return;
}
String user_id=request.getParameter("user_id"); 
UserService userService=new UserService();
User user=userService.selectUser(user_id);
String r_nostr=request.getParameter("r_no");
if(r_nostr.equals("")||r_nostr==null){
	response.sendRedirect("review_list_product.jsp");
	return;
}
int r_no=Integer.parseInt(r_nostr);
ReviewService reviewService=new ReviewService();
Review review=reviewService.selectReview(r_no); 
 
/* int r_no=Integer.parseInt(request.getParameter("r_no")); */
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="f" method="post" action="review_update_action.jsp">
<input type="hidden" name="r_no" value="<%=r_no%>"/>
리뷰 상품명 : <%=review.getProduct().getP_name() %>
<br>
리뷰 제목:<input type="text" name="r_title" value="<%=review.getR_title() %>"/> 
<br>
작성자: <%=user.getUser_name()%> (<%=user.getUser_id()%>) <br>
별점 : <input type="number" name="r_stargrade" value="<%=review.getR_stargrade()%>" min="1" max="5"> 
리뷰내용 : <input type="text" name="r_content" value="<%=review.getR_content()%>"/> <br>
<input type ="submit" value="수정" >

</form>

</body>
</html>