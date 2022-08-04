<%@page import="com.itwill.bakery.service.OrderReviewService"%>
<%@page import="com.itwill.bakery.vo.Product"%>
<%@page import="com.itwill.bakery.vo.OrderItem"%>
<%@page import="com.itwill.bakery.service.ProductService"%>
<%@page import="com.itwill.bakery.vo.Orders"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.dao.OrdersDao"%>
<%@page import="com.itwill.bakery.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    OrderService orderService = new OrderService();
OrdersDao orderDao=new OrdersDao();
List<Orders> orderList = orderService.list_detail("guntae123");

ProductService productService = new ProductService();
OrderReviewService orderReviewService=new OrderReviewService();

int check=0;
int i=0;
String bName="리뷰 작성";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="js/review.js"></script>

</head>
<body>
<% for(Orders order : orderList) { %>
		
		
		주문번호: <%=order.getO_no() %><br>
		배송상태: <%=order.getO_desc() %><br>
		주문일자: <%=order.getO_date() %><br>
		총 가격: <%=order.getO_price() %><br>
		<br>
		<br>
		
		<% for ( OrderItem orderItemList:order.getOrderItemList()){ %>
		<form name='f<%=i %>' method='post' onsubmit='return false'>
			<input type="hidden" name="oi_no" value="<%=orderItemList.getOi_no() %>">
			<input type="hidden" name="p_no" value="<%=orderItemList.getProduct().getP_no() %>">
			<% Product product = productService.selectByNo(orderItemList.getProduct().getP_no());%>
			상품명: <%=orderItemList.getProduct().getP_name() %><br>
			상품수량: <%=orderItemList.getOi_qty() %><br>
			가격: <%=orderItemList.getOi_qty() * product.getP_price() %><br>
			<%if(orderReviewService.checkOR(orderItemList.getOi_no())==1){%>
			<input type="hidden" name="r_no" value="<%=orderReviewService.returnRno(orderItemList.getOi_no())%>">
			<%check=1; %>
			<%bName="작성한 리뷰 보기";}%><%
			else{check=0;
			bName="리뷰 작성";}%>
			
			
		   
			
			<input type="button" value="<%=bName %>" onClick="review_writeCheck('f<%=i%>',<%=check%>)"/>
			<br>
			<br>
		</form>
		<%i++; %>
		<%} %>
	<% }%>

</body>
</html>