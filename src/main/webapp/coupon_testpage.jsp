<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String userId="juhee13";
    int period=5;
    int discount=88;
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 발급</title>
<script src="js/coupon.js"></script>
</head>
<body>
<form name="f" method="post" >
<input type="hidden"  name="period" value="<%=period%>"/>
쿠폰 기한 : <%=period %> <br>
<input type="hidden" name="discount" value="<%=discount%>"/>
할인율:<%=discount %><br>
<input type="button" value="발급" onclick="couponCreate()"/>


</form>

</body>
</html>