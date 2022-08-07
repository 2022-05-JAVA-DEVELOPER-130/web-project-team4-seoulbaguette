<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>SEOULBAGUETTE</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/menu.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<script type="text/javascript" src="js/qna.js">
	
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top_main.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
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
									Q & A > 게시물 작성
									</caption>
							</table> <br> <!-- write Form  -->
							<form name="f" method="post">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E2E2E2" height="22">제목</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input type="text" style="width: 150px" name="qna_title"></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E2E2E2" height="22">작성자</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left" >
										<input type="text" style="width: 150px" name="user_id" ></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E2E2E2">내용</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><textarea name="content" class="textarea"
												style="width: 350px" rows="14"></textarea></td>
									</tr>
								</table>
							</form> <br>
							<table width=590 border=0 cellpadding=0 cellspacing=0>
								<tr>
									<td align=center>
									<input type="button" value="게시물 작성" onClick="qnaCreateMsg()"> &nbsp; 
									<input type="button" value="게시물 목록" onClick="qnaList()"></td>
								</tr>
							</table></td>
					</tr>
				</table>
				</div>

				<!-- include_content.jsp end-->
				<!-- content end -->
			</div>
			<!--wrapper end-->
			<div id="footer">
				<!-- include_common_bottom.jsp start-->
				<jsp:include page="include_common_bottom.jsp" />
				<!-- include_common_bottom.jsp end-->
			</div>
		</div>
		<!--container end-->
</body>
</html>