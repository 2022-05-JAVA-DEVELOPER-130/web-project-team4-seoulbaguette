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
</head>
<body>
<h1>공지</h1>	
	<div>
			<ul>
			<%for(Notice notice:noticeList){ %>
			<li><a href='notice_view.jsp?noice_no=<%= notice.getNotice_no()%>'>
			[<%=notice.getNotice_title() %>]</a><br>
			작성일 : <%=notice.getNotice_date() %>
			<br>
			내용 : <%= notice.getNotice_content() %>
			</li>
			<br>
	        <% }%>
	</ul>
			
			</div>

</body>
</html>