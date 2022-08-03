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
</head>
<body>
<form method="post" action="coupon_create_action.jsp" >
<input type="hidden"  name="period" value="<%=period%>"/>
쿠폰 기한 : <%=period %> <br>
<input type="hidden" name="discount" value="<%=discount%>"/>
할인율:<%=discount %><br>
<input type="submit" value="발급"/>


</form>

</body>
</html>