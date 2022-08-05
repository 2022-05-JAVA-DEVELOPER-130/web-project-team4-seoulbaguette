<%@page import="com.itwill.bakery.service.QnAService"%>
<%@page import="com.itwill.bakery.vo.QnAListPageMaker"%>
<%@page import="com.itwill.bakery.vo.QnA"%>
<%@ page import="com.itwill.bakery.vo.Notice"%>
<%@ page import="java.util.List"%>
<%@ page import="com.itwill.bakery.service.NoticeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
NoticeService noticeService = new NoticeService();
List<Notice> noticeList = noticeService.selectAllNotice();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEOUL BAGUETTE</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/menu.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<style type="text/css" media="screen">
</style>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top_main.jsp"/>
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
<!-- content start -->
			<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>공지</b></td>
								</tr>
							</table>	
							
							<!-- **************************************************** -->
							
								<tr bgcolor="#FFFFFF">
									<td height="20" class="t1" align="right" valign="bottom">
									</td>
								</tr>
								
							</table> <br /> <!-- list -->
							<form name="f" method="post" action="">
								<table border="0" cellpadding="0" cellspacing="1" width="400"
									bgcolor="BBBBBB">

									<tr>
										<td width=200 align=center bgcolor="E6ECDE">제목</td>
										<td width=70 align=center bgcolor="E6ECDE">작성일</td>
										<td width=50 align=center bgcolor="E6ECDE">내용</td>
									</tr>
									<%
										for(Notice notice:noticeList) {
									%>
									<tr>
									
										<td width=200 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<a href='notice_view.jsp?notice_no=<%= notice.getNotice_no()%>'>
										<%=notice.getNotice_title()%>
										</a>
										<td width=70 align=center bgcolor="ffffff" align="left"><%=notice.getNotice_date()%>
										</td>
										<td width=50 align="center" bgcolor="ffffff">
											<a href='notice_view.jsp?notice_no=<%= notice.getNotice_no()%>'>
											<%="<상세 보기>"%>
											</a>
										</td>
									</tr>
									<%
										}
									%>
								</table>
								<!-- /list -->
							</form> <br>
							<table border="0" cellpadding="0" cellspacing="1" width="400">
								<tr>
									<td align="center">
							     
							
							
							<!-- **************************************************** -->
				
				</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp"/>
			<!-- include_common_bottom.jsp end-->
		</div>
	<!--container end-->
</body>
</html>
