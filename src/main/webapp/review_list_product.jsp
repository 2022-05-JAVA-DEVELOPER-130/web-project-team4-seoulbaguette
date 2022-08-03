<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.vo.Review"%>
<%@page import="com.itwill.bakery.service.ReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int p_no=8;
    ReviewService reviewService=new ReviewService();
    List<Review> reviewList=reviewService.selectReviewByP(p_no);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="f" method="post">
<table width="100%" align="center" border="0" cellpadding="10"
									cellspacing="1" bgcolor="BBBBBB">
									<%
									/*int product_size=productList.size();
									int product_column_size=4;
									int product_line_count = 1;
									
									
									for (int i=0;i<productList.size();i++) {
											Product product=productList.get(i);
											*/
									%>
									<!--리뷰 리스트 시작 -->
									<%
									 if(i%product_column_size==0){
									%>
									<tr>
									<%} %>
										<td align="center" width="25%"  bgcolor="ffffff"><a
											href="product_detail.jsp?p_no=<%=product.getP_no()%>"><img width="88px" height="65px"
												src="image/<%=product.getP_image()%>" border="0"></a><br />
											<br /> <b>견종:<%=product.getP_name()%></b><br> <font
											color="#FF0000">가격:<%=new DecimalFormat("#,##0").format(product.getP_price())%>원
										</font></td>
									<%if(i%product_column_size==3){%>
									</tr>
									<%} %>	
									
								   <!--상품 끝 -->
								   <%}%>	
								   </table>

</form>

</body>
</html>