<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.OrderItem"%>
<%@page import="com.itwill.bakery.vo.Orders"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String o_noStr=request.getParameter("o_no");
OrderService orderService = new OrderService();
Orders orders = orderService.detail("yeji2345", Integer.parseInt(o_noStr));
ProductService productService = new ProductService();




%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
		주문번호: <%=orders.getO_no() %><br>
		배송상태: <%=orders.getO_desc() %><br>
		주문일자: <%=orders.getO_date() %><br>
		총 가격: <%=orders.getO_price() %><br>
		<br>
		<br>
		<% for ( OrderItem orderItemList:orders.getOrderItemList()){ %>
			<% Product product = productService.selectByNo(orderItemList.getProduct().getP_no());%>
			상품명: <%=orderItemList.getProduct().getP_name() %><br>
			상품수량: <%=orderItemList.getOi_qty() %><br>
			가격: <%=orderItemList.getOi_qty() * product.getP_price() %><br>
			<br>
			<br>
			
		
		<%} %>
		<br>
		<br>
-->
<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>쇼핑몰 -
											주문상세조회</b></td>
								</tr>
							</table> <!--form-->
							<form name="f" method="post" action="order_delete_action.jsp">
								<input type="hidden" name="j_no" value="<%=orders.getO_no()%>">
								<table align="center" width="80%"  border="0" cellpadding="0" cellspacing="1"  bgcolor="BBBBBB" >
									<caption style="text-align: left;">주문상세정보</caption>
									<tr>
										<td width=290 height=25 bgcolor="E6ECDE" align=center class=t1><font
											>주문번호</font></td>
										<td width=112 height=25 bgcolor="E6ECDE" align=center class=t1><font
											>주문일</font></td>
										<td width=166 height=25 bgcolor="E6ECDE" align=center class=t1><font
											>주문자</font></td>
										<td width=50 height=25 bgcolor="E6ECDE" align=center class=t1><font
											>비 고</font></td>
									</tr>
									
									
									<tr>
										<td width=290 height=26 align=center bgcolor="ffffff" class=t1><%=orders.getO_no()%></td>
										<td width=112 height=26 align=center bgcolor="ffffff" class=t1><%=orders.getO_date()%></td>
										<td width=166 height=26 align=center bgcolor="ffffff" class=t1><%=orders.getUser_id()%></td>
										<td width=50 height=26 align=center bgcolor="ffffff" class=t1>
												<input type="submit" value="삭제">
										</td>
									</tr>
								</table>
									
								<br/>	
								<table align=center  width=80% border="0" cellpadding="0" cellspacing="1"  bgcolor="BBBBBB" >
									<caption style="text-align: left;">주문제품목록</caption>
									<tr style="border: 0.1px solid">
										<td width=290 height=25 align=center bgcolor="E6ECDE" class=t1>상품</td>
										<td width=112 height=25 align=center bgcolor="E6ECDE" class=t1>수 량</td>
										<td width=166 height=25  align=center bgcolor="E6ECDE" class=t1>가 격</td>
										<td width=50 height=25  align=center bgcolor="E6ECDE" class=t1>비 고</td>
									</tr>
									
									<!-- orer item start -->
									<%
									int tot_price=0;
																for(OrderItem orderItem:orders.getOrderItemList()) {
																tot_price+=orderItem.getOi_qty()*orderItem.getProduct().getP_price();
									%>
									<tr>
										<td width=290 height=26 align=center  bgcolor="ffffff" class=t1>
										<a href='product_detail.jsp?p_no=<%=orderItem.getProduct().getP_no()%>'>
										<%=orderItem.getProduct().getP_name()%></a>
										</td>
										
										<td width=112 height=26 align=center  bgcolor="ffffff" class=t1>
										<%=orderItem.getOi_qty()%>
										</td>
										
										<td width=166 height=26 align=center bgcolor="ffffff" class=t1>
										<%=new DecimalFormat("#,###").format(orderItem.getOi_qty()*orderItem.getProduct().getP_price())%>
										</td>
										<td width=50 height=26 align=center class=t1 bgcolor="ffffff"></td>
									</tr>
									<%}%>
									<!-- cart item end -->
									<tr>
										<td width=640 colspan=4 height=26  bgcolor="ffffff" class=t1>
										
											<p align=right style="padding-top: 10px">
												<font color=#FF0000>총 주문 금액 : <%=new DecimalFormat("#,###.0").format(tot_price)%> 원
												</font>
											</p>
										</td>
									</tr>
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align=center> 
										&nbsp;&nbsp;<a href=order_list.jsp
										class=m1>주문목록</a>
										&nbsp;&nbsp;<a href=product_list.jsp
										class=m1>계속 쇼핑하기</a>

									</td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->

</body>
</html>