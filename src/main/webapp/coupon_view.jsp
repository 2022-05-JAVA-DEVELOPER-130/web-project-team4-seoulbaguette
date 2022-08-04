<%@page import="com.itwill.bakery.vo.Coupon"%>
<%@page import="com.itwill.bakery.service.CouponService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String c_no=request.getParameter("c_no");
    CouponService couponService=new CouponService();
    Coupon coupon=couponService.selectCoupon(new Coupon(Integer.parseInt(c_no),null,null,0,null,0));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>쿠폰</h1>
<form method="POST" action="coupon_use_delete_action.jsp">
<input type="hidden" name="c_no" value="<%=coupon.getC_no()%>"/>

쿠폰 번호 : <%=coupon.getC_no() %> <br>
쿠폰 발급일 : <%=coupon.getC_start_date() %><br>
쿠폰 기한 : <%=coupon.getC_end_date() %><br>
쿠폰 할인율: <%=coupon.getC_discount() %>
<input type="submit" value="사용"/>
</form>
</body>
</html>