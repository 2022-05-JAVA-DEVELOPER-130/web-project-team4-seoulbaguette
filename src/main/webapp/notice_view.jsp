<%@page import="com.itwill.bakery.vo.QnA"%>
<%@page import="com.itwill.bakery.service.QnAService"%>
<%@page import="com.itwill.bakery.vo.QnAListPageMaker"%>
<%@ page import="com.itwill.bakery.vo.Notice"%>
<%@ page import="java.util.List"%>
<%@ page import="com.itwill.bakery.service.NoticeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
if (request.getParameter("notice_no") == null || request.getParameter("notice_no").equals("")) {
	response.sendRedirect("notice_list.jsp");
	return;
}
NoticeService noticeService = new NoticeService();
List<Notice> noticeList = noticeService.selectAllNotice();
String noStr=request.getParameter("notice_no");
Notice notice = noticeService.selectByNoticeNo(Integer.parseInt(noStr));


%>

		<!-- ********************************************************** -->

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
								<caption
									style="text-align: left; font-weight: bold; padding-bottom: 7px">
									<span style="border-left: 4px solid #888888;"></span>&nbsp;&nbsp;
									NOTICE > 상세보기
								</caption>
							</table>	
							
							<!-- **************************************************** -->
							
								<tr bgcolor="#FFFFFF">
									<td height="20" class="t1" align="right" valign="bottom">
									</td>
								</tr>
								
							</table> <br />
							 
							<form name="f" method="post">
								<input type="hidden" name="boardno" value="<%=notice.getNotice_no()%>">
								<input type="hidden" name="pageno" value="">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">

									<tr>
										<td width=100 align=center bgcolor="E2E2E2" height="30">제목</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><%=notice.getNotice_title()%></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E2E2E2" height="30">작성일</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><%=notice.getNotice_date()%></td>
									</tr>
									
									<tr>
										<td width=100 align=center bgcolor="E2E2E2" height="22">내용</td>
										<td width=490 bgcolor="ffffff" height="180px"
											style="padding-left: 10px" align="left"><%=notice.getNotice_content()%><br />

										</td>
									</tr>

								</table>

    <!-- ********************************************************** -->
</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp"/>
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>