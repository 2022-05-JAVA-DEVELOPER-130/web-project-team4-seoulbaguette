<%@page import="com.itwill.bakery.service.QnAService"%>
<%@page import="com.itwill.bakery.vo.QnA"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%>  
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("qna_list.jsp");
		return;
	}

	QnA qna=new QnA();
	qna.setQna_title(request.getParameter("title"));
	qna.setUser_id(request.getParameter("user_id"));
	qna.setQna_content(request.getParameter("content"));
	
	QnAService.getInstance().create(qna);
	response.sendRedirect("qna_list.jsp");
	

%>