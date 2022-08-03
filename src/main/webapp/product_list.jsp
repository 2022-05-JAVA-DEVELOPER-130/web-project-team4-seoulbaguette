<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ProductService productService = new ProductService();
List<Product> productList = productService.selectAll();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>SEOULBAGUETTE</title>
</head>
<body>
	<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>쇼핑몰 -
											상품리스트</b></td>
								</tr>
							</table>

							<form name="f" method="post">
								<table width="100%" align="center" border="0" cellpadding="10"
									cellspacing="1" bgcolor="BBBBBB">
									<%
									int product_size=productList.size();
									int product_column_size=4;
									int product_line_count = 1;
									
								
									for (int i=0;i<productList.size();i++) {
											Product product=productList.get(i);
											
									%>
									<!--상품시작 -->
									<%
									 if(i%product_column_size==0){
									%>
									<tr>
									<%} %>
										<td align="center" width="25%"  bgcolor="ffffff"><a
											href="product_detail.jsp?p_no=<%=product.getP_no()%>"><img width="88px" height="65px"
												src="image/<%=product.getP_image()%>" border="0"></a><br />
											<br /> <b><%=product.getP_name()%></b><br> <font
											color="#FF0000">금액: <%=product.getP_price()%>원
										</font></td>
									<%if(i%product_column_size==3){%>
									</tr>
									<%} %>	
									
								   <!--상품 끝 -->
								   <%}%>	
								</table>
							</form> <br /></td>
					</tr>
				</table>
</body>
</html>