<%@page import="com.itwill.bakery.vo.QnA"%>
<%@page import="com.itwill.bakery.service.QnAService"%>
<%@page import="javax.print.attribute.HashPrintRequestAttributeSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Integer qna_no=null;	
	int pageno=1;
	try{
		qna_no=Integer.parseInt(request.getParameter("qna_no"));
		pageno=Integer.parseInt(request.getParameter("pageno"));
	}catch(Exception e){
		
	}
	if(qna_no==null){
		response.sendRedirect("qna_list.jsp?pageno="+pageno);
		return;
	}
	QnA qna=QnAService.getInstance().findQnA(qna_no);
	if(qna==null){
		response.sendRedirect("qna_list.jsp?=pageno="+pageno);
		return;
	}
	
	//readCount 증가
	QnAService.getInstance().updateReadCount(qna_no);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 상세보기</title>
<script type="text/javascript" src="js/qna.js">

</script>
</head>
<body>
<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp; <b> 게시물
											내용보기 </b>
									</td>
								</tr>
							</table> <br> 
							 
							<form name="f" method="post">
								<input type="hidden" name="boardno" value="<%=qna.getQna_no()%>">
								<input type="hidden" name="pageno" value="<%=pageno%>">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">작성자</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><%=qna.getUser_id()%></td>
									</tr>

									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">제목</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><%=qna.getQna_title()%></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">내용</td>
										<td width=490 bgcolor="ffffff" height="180px"
											style="padding-left: 10px" align="left"><%=qna.getQna_content()%><br />

										</td>
									</tr>

								</table>

							</form> <br>
							<table width=590 border=0 cellpadding=0 cellspacing=0>
								<tr>
									<td align=center>
										<input type="button" value="글쓰기" onClick="qnaCreate()"> &nbsp; 
										<input type="button" value="답글쓰기" onClick="qnaReplyCreate()"> &nbsp; 
										<input type="button" value="수정" onClick="qnaUpdate()"> &nbsp; 
										<input type="button" value="삭제" onClick="qnaRemove()"> &nbsp; 
										<input type="button" value="리스트" onClick="qnaList()"></td>
								</tr>
							</table>
			
		


</body>
</html>