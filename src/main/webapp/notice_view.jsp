<%@ page import="com.itwill.bakery.vo.Notice"%>
<%@ page import="java.util.List"%>
<%@ page import="com.itwill.bakery.service.NoticeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

NoticeService noticeService = new NoticeService();
List<Notice> noticeList = noticeService.selectAllNotice();
Notice notice = noticeService.selectByNoticeNo(1);


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
		작성일: <%=notice.getNotice_title() %><br>
		내용: <%=notice.getNotice_content() %><br>

</body>
</html>