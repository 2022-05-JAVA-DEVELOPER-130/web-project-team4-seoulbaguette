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
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


		공지 번호: <%=notice.getNotice_no() %><br>
		제목: <%=notice.getNotice_title() %><br>
		작성일: <%=notice.getNotice_date() %><br>
		내용: <%=notice.getNotice_content() %><br>

</body>
</html>