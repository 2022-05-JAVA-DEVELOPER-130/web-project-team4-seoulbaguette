<%@page import="com.itwill.bakery.vo.QnA"%>
<%@page import="com.itwill.bakery.service.QnAService"%>
<%@page import="javax.print.attribute.HashPrintRequestAttributeSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int qna_no=8;
	
	//String qna_no=request.getParameter("qna_no");
	
	//if(qna_no==null || qna_no.equals("")){
	//	response.sendRedirect("shop_main.jsp");
	//	return;
	//}
	
	QnAService qnaService=new QnAService();
	//QnA qna=qnaService.findQnA(Integer.parseInt(qna_no));
	QnA qna=qnaService.findQnA(qna_no);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 상세보기</title>
</head>
<body>
		제목 : <%=qna.getQna_title() %> <br>
		아이디 : <%=qna.getUser_id() %> <br>
		날짜 : <%=qna.getQna_date() %> <br>
		내용 : <%=qna.getQna_content() %> <br>
		조회수 : <%=qna.getQna_readcount() %> <br>
		


</body>
</html>