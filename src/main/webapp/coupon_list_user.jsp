<%@page import="com.itwill.bakery.vo.Coupon"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.service.CouponService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userId="juhee13";
    CouponService couponService=new CouponService();
    List<Coupon> couponList=couponService.selectCouponById(userId);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=userId %> 보유 쿠폰 리스트</title>
</head>
<body>
<h3><%=userId %> 보유 쿠폰 리스트</h3>
<%
for(Coupon coupon:couponList){%>
<a href='coupon_view.jsp?c_no=<%=coupon.getC_no()%>'>
쿠폰 번호 : <%=coupon.getC_no() %> <br>
쿠폰 발급일 : <%=coupon.getC_start_date() %><br>
쿠폰 기한 : <%=coupon.getC_end_date() %><br>
쿠폰 할인율: <%=coupon.getC_discount() %>
</a>
<br>
<br>
<%} %>
</body>
</html>