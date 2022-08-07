<%@page import="com.itwill.bakery.service.QnAService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%>  
<%

	String sUser_id=(String)session.getAttribute("s_u_id");

	Integer qna_no=null;
	Integer pageno=null;
	Integer groupno=null;
	try {
		qna_no=Integer.valueOf(request.getParameter("qna_no"));
		pageno=Integer.valueOf(request.getParameter("pageno"));
		groupno=Integer.valueOf(request.getParameter("groupno"));
	}catch(Exception ex){
	}
	boolean result=true;
	
	String msg="";
	if(qna_no==null){
		result=false;
		msg="삭제실패";
	}else{
		try{
			QnAService.getInstance().delete(groupno);
			result=true;
			msg="삭제성공";
		}catch(Exception ex){
			result=false;
			msg="삭제실패";
				
		}
	}
	
%>
<script type="text/javascript">
<%if (result) {%>
	alert('<%=msg%>');
	location.href='qna_list.jsp?pageno=<%=pageno%>';
<%} else {%>
	alert('<%=msg%>');
	location.href='qna_list.jsp?pageno=<%=pageno%>';
<%}%>
	
</script>
