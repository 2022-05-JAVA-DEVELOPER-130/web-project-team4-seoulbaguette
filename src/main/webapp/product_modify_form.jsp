<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int p_no=Integer.parseInt(request.getParameter("p_no"));
	ProductService productService = new ProductService();
	Product product = productService.selectByNo(p_no);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "[http://www.w3.org/TR/html4/loose.dtd](http://www.w3.org/TR/html4/loose.dtd)">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/menu.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<style type="text/css" media="screen">
</style>
<script src="js/product.js"></script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top_product.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->

		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->
			<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<caption
									style="text-align: left; font-weight: bold; padding-bottom: 7px">
									<span style="border-left: 4px solid #888888;"></span>&nbsp;&nbsp;
									PRODUCT > 수정
								</caption>
							</table> <!-- view Form  -->
<br> <!-- modify Form  -->
							<form name="f" method="post">
							<input type="hidden" name="p_no" value="<%=product.getP_no()%>" /> 
								<br>
						<br>
							<table style="margin-left: 10px" border=0 width=80% height=376
								align=center>
								<tr valign=bottom>
									<td width=40% align=center class=t1>
									<font size=3 color=#0000FF><b>상품</b></font></td>
									<td width=30% align=center class=t1>
									<font size=3 color=#0000FF><b>상품설명</b></font></td>
									<td width=30% align=center class=t1>
									<font size=3 color=#0000FF><b>수량</b></font></td>
								</tr>
								<tr width=100%>
									<td colspan=3 height=5><hr color=#556b2f></td>
								</tr>
								<tr width=100%>
									<td width=40% height=200 align=center>
									<img border=0 src='image/<%=product.getP_image()%>' width=220 height=220></td>
									<td width=30% height=200 class=t1>
										<ol type="disc">
											<li><b><font size=2 >상품명 : 
											<input type="text" style="width: 150" name="p_name" value="<%=product.getP_name()%>">
											</font>&nbsp;&nbsp;&nbsp;<br>
											</b></li>
											<li><font size=2 color=#FF0000>판매가 :
											<input type="text" style="width: 150" name="p_price" value="<%=product.getP_price()%>"> 원&nbsp;&nbsp;&nbsp;<br>
											</font></li>
											<li><font size=2  color=#0000FF><%=product.getP_desc()%>
											<input type="text" style="width: 150" name="p_desc" value="<%=product.getP_desc()%>"> 원&nbsp;&nbsp;&nbsp;<br>
											</font></li>
										</ol>
									</td>


								</table>
							</form> 

							<table width=590 border=0 cellpadding=0 cellspacing=0>
								<tr>
									<td align=center>
									<input type="button" value="수정" onClick="()"> &nbsp; 
									<input type="button" value="리스트" onClick="qnaList()"></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>