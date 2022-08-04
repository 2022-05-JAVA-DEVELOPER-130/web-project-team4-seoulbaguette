<%@page import="com.itwill.bakery.service.QnAService"%>
<%@page import="com.itwill.bakery.vo.QnAListPageMaker"%>
<%@page import="com.itwill.bakery.vo.QnA"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!public String getTitleString(QnA qna) {
		StringBuilder title = new StringBuilder(128);
		String t = qna.getQna_title();
		if (t.length() > 15) {
			//t = t.substring(0,15);
			//t = t+"...";
			t = String.format("%s...", t.substring(0, 15));
		}
		//답글공백삽입
		
		for (int i = 0; i < qna.getDepth(); i++) {
			title.append("&nbsp;&nbsp;");
		}
		
		if (qna.getDepth() > 0) {
			title.append("<img border='0' src='image/re.gif'/>");
		}
		
		title.append(t.replace(" ", "&nbsp;"));
		
		return title.toString();
	}%>
<%
String pageno=request.getParameter("pageno");
if(pageno==null||pageno.equals("")){
	pageno="1";
}

QnAListPageMaker qnaListPage
		= new QnAService().findQnAList(Integer.parseInt(pageno));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<script type="text/javascript" src="js/qna.js">

</script>
</head>
<body>
<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp; <b>게시판-리스트</b>
									</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="20" class="t1" align="right" valign="bottom">
										총 <font color="#FF0000"><%=qnaListPage.totCount%></font>
										건 | 현재페이지( <font color="#FF0000"><%=qnaListPage.pageMaker.getCurPage()%></font>
										/ <font color="#0000FF"><%=qnaListPage.pageMaker.getTotPage()%></font>
										)
									</td>
								</tr>
							</table> <br /> <!-- list -->
							<form name="f" method="post" action="">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">

									<tr>
										<td width=280 align=center bgcolor="E6ECDE">제목</td>
										<td width=120 align=center bgcolor="E6ECDE">작성자</td>
										<td width=120 align=center bgcolor="E6ECDE">작성일</td>
										<td width=70 align=center bgcolor="E6ECDE">조회수</td>
									</tr>
									<%
										for (QnA qna : qnaListPage.itemList) {
									%>
									<tr>
										<td width=280 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<a href='qna_view.jsp?qna_no=<%=qna.getQna_no()%>&pageno=<%=qnaListPage.pageMaker.getCurPage()%>'>
										<%=this.getTitleString(qna)%>
										</a>
										</td>
										<td width=120 align=center bgcolor="ffffff"><%=qna.getUser_id()%>
										</td>
										<td width=120 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<%=qna.getQna_date().toString().substring(0,10)%>
										</td>
										<td width=70 align=center bgcolor="ffffff" align="left"><%=qna.getQna_readcount()%>
										</td>
									</tr>
									<%
										}
									%>
								</table>
								<!-- /list -->
							</form> <br>
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align="center">
							     
										 <%if(qnaListPage.pageMaker.getPrevGroupStartPage()>0) {%>    
										    <a href="./qna_list.jsp?pageno=1">◀◀</a>&nbsp;
										 <%}%>
										 <%if(qnaListPage.pageMaker.getPrevPage()>0) {%> <%-- 이전페이지가 0이면 안보임 --%>  
											<a href="./qna_list.jsp?pageno=<%=qnaListPage.pageMaker.getPrevPage()%>">◀</a>&nbsp;&nbsp;
										 <%}%>
										
										<%
											for (int i = qnaListPage.pageMaker.getBlockBegin(); i <= qnaListPage.pageMaker.getBlockEnd(); i++) {
										 	if (qnaListPage.pageMaker.getCurPage() == i) {
										%>
										 <font color='red'><strong><%=i%></strong></font>&nbsp;
										<%} else {%>
										<a href="./qna_list.jsp?pageno=<%=i%>"><strong><%=i%></strong></a>&nbsp;
										<%
										   }
										  }%>
										  
										  
										 <%if(qnaListPage.pageMaker.getNextGroupStartPage()< qnaListPage.pageMaker.getTotPage()){%>
										  <a href="./board_list.jsp?pageno=<%=qnaListPage.pageMaker.getNextPage()%>">▶&nbsp;</a>
										 <%}%>
										 <%if(qnaListPage.pageMaker.getNextGroupStartPage()< qnaListPage.pageMaker.getTotPage()){%>
										<a
										href="./board_list.jsp?pageno=<%=qnaListPage.pageMaker.getNextGroupStartPage()%>">▶▶</a>&nbsp;
										 <%}%>
									</td>
								</tr>
							</table> <!-- button -->
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align="right"><input type="button" value="게시물 생성"
										onclick="qnaCreate();" /></td>
								</tr>
							</table></td>
					</tr>
				</table>
</body>
</html>