<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@page import="com.itwill.bakery.vo.Review"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.ReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@include file="user_login_check.jspf"%>  --%>
    <%
String userId="guntae123";
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
<script src="js/review.js"></script>
</head>
<body>

	<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>마이페이지 -
											내가 쓴 리뷰</b></td>
								</tr>
							</table> <!--form-->
							<form name="f" method="post">
								<table align=center width=80%  border="0" cellpadding="0"
									cellspacing="1" bgcolor="BBBBBB">
									<tr>
										<td width=145 height=25 bgcolor="E6ECDE" align=center class=t1><font>상품</font></td>
										<td width=145 height=25 bgcolor="E6ECDE" align=center class=t1><font>제목</font></td>
										<td width=112 height=25 bgcolor="E6ECDE" align=center class=t1><font>작성날짜</font></td>
										<td width=136 height=25 bgcolor="E6ECDE" align=center class=t1><font>별점</font></td>
										
									</tr>

									<!-- order start -->
									<%
									for (Review review:reviewList) {
									%>
										
									<tr>
										<td width=145 height=26 align=center bgcolor="ffffff" class=t1><a href="product_detail.jsp?p_no=<%=review.getProduct().getP_no()%>" class=m1><%=review.getProduct().getP_name()%></a></td>
										<td width=145 height=26 align=center bgcolor="ffffff" class=t1><a href="review_view.jsp?r_no=<%=review.getR_no()%>" class=m1><%=review.getR_title()%></a></td>
										<td width=112 height=26 align=center bgcolor="ffffff" class=t1><%=review.getR_date().substring(0,11) %></td>
										<td width=136 height=26 align=center bgcolor="ffffff" class=t1>
										<% 
										for(int i=0;i<review.getR_stargrade();i++){
										out.print("★");}
										%>
										</td>
									</tr>
										
									<%} %>
									<!-- order end -->




								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align=center>&nbsp;&nbsp;
									<input type="button" value="마이페이지로 돌아가기" onClick="returnMypage()"/>
									</td>
									
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		
	<%-- 	
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
			
			</div> --%>

</body>
</html>