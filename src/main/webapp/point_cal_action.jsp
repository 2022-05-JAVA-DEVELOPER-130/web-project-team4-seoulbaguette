<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
 
    
    int point=Integer.parseInt(request.getParameter("point"));
  	String p_no=request.getParameter("p_no");
  	String c_qtyStr = request.getParameter("p_qty");
    request.setAttribute("remainPoint", point);
    request.setAttribute("p_no", p_no);
    request.setAttribute("c_qty", c_qtyStr);
    RequestDispatcher rd=request.getRequestDispatcher("order_form_test.jsp");
    rd.forward(request, response);
   
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>