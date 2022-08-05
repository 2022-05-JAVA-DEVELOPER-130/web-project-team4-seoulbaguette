<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@include file="user_login_check.jspf"%> --%>
<%
String userid="guard1";
String msg2=(String)request.getAttribute("msg2");
if(msg2==null)msg2="";


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/user.js"></script>
</head>
<body>
	<div id="content">
		<table width=0 border=0 cellpadding=0 cellspacing=0>
			<tr>
				<td>
					<!--contents--> <br />
					<table style="padding-left: 10px" border=0 cellpadding=0
						cellspacing=0>
						<tr>
							<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>회원탈퇴 -
									비밀번호 확인</b></td>
						</tr>
					</table> <!-- Form  -->
					<form name="f" method="post">

						<table border="0" cellpadding="0" cellspacing="1" width="590"
							bgcolor="BBBBBB">

							<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호</td>
								<td width=490 bgcolor="ffffff" style="padding-left: 10px"
									align="left"><input type="password" style="width: 150px"
									name="user_password" value="">&nbsp;&nbsp;<font color="red"><%=msg2 %></font></td>
							</tr>


						</table>
					</form>
					<br>
					<table border=0 cellpadding=0 cellspacing=1>
						<tr>
							<td align=center><input type="button" value="확인"
								onclick="userPasswordCheckAction()"> &nbsp; <input type="button"
								value="취소" onClick="userModify_cancel()"></td>
						</tr>
					</table>
				
				
				
	</div>

</body>
</html>