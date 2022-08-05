<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
 
    
    int point=Integer.parseInt(request.getParameter("point"));
  	String p_no=request.getParameter("p_no");
  	String c_qtyStr = request.getParameter("p_qty");
  	String a_addno = request.getParameter("add_select");
  	request.setAttribute("add_select",a_addno);
    request.setAttribute("remainPoint", point);
    request.setAttribute("p_no", p_no);
    request.setAttribute("c_qty", c_qtyStr);
    RequestDispatcher rd=request.getRequestDispatcher("order_create_form.jsp");
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