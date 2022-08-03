<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@page import="com.itwill.bakery.vo.Review"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.ReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%> 
    <%
String userId="juhee13";
ReviewService reviewService = new ReviewService();
List<Review> reviewList = reviewService.selectReviewById(userId);

UserService userService= new UserService();
User user=userService.selectUser(userId);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>리뷰</h1>
	
	<div>
	회원 : [<%=userId %>] <%=user.getUser_name() %>
			<ul>
			<%for(Review review:reviewList){ %>
			<li><a href='review_view.jsp?r_no=<%= review.getR_no()%>'>
			[별점 :<%=review.getR_stargrade()  %>] <br><%=review.getR_date() %> 작성자 : <%=review.getUser_id() %></a>
			<br>
			상품:<%=review.getProduct().getP_name() %>
			<%=review.getR_title() %>
			<br>
			<%=review.getR_content() %>
			</li>
			<br>
	        <% }%>
	</ul>
			
			</div>

</body>
</html>