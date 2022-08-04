<%@page import="com.itwill.bakery.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
User fuser = (User) request.getAttribute("fuser");
if (fuser == null) {
	fuser = new User("","","","","",0,null);
}
String msg = (String) request.getAttribute("msg");
if (msg == null)
	msg = "";
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
							<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리 -
									회원 가입</b></td>
						</tr>
					</table> <!-- write Form  -->
					<form name="f" method="post">
						<table border="0" cellpadding="0" cellspacing="1" width="590"
							bgcolor="BBBBBB">
							<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">
									아이디</td>
								<td width=490 bgcolor="ffffff" style="padding-left: 10px"
									align="left"><input type="text" style="width: 150px"
									name="user_id" value="<%=fuser.getUser_id()%>">&nbsp;&nbsp;<font
									color="red"><%=msg%></font></td>
							</tr>
							<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호</td>
								<td width=490 bgcolor="ffffff" style="padding-left: 10px"
									align="left"><input type="password" style="width: 150px"
									name="user_password" value="<%=fuser.getUser_password()%>"></td>
							</tr>
							<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호
									확인</td>
								<td width=490 bgcolor="ffffff" style="padding-left: 10px"
									align="left"><input type="password" style="width: 150px"
									name="user_password2" value="<%=fuser.getUser_password()%>"></td>
							</tr>
							<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
								<td width=490 bgcolor="ffffff" style="padding-left: 10px"
									align="left"><input type="text" style="width: 150px"
									name="user_name" value="<%=fuser.getUser_name()%>"></td>
							</tr>
							<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">이메일
									주소</td>
								<td width=490 bgcolor="ffffff" style="padding-left: 10px"
									align="left"><input type="text" style="width: 150px"
									name="user_email" value="<%=fuser.getUser_email()%>"></td>
							</tr>
							<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">핸드폰
									번호</td>
								<td width=490 bgcolor="ffffff" style="padding-left: 10px"
									align="left"><input type="text" style="width: 150px"
									name="user_phone" value="<%=fuser.getUser_email()%>"></td>
							</tr>
							<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">포인트</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input disabled="disabled" type="text" style="width: 150px" name="user_point"
											value="1000">
										<input type="hidden" name="point" value="1000">
										</td>
									</tr>
						</table>
					</form> <br />

					<table border=0 cellpadding=0 cellspacing=1>
						<tr>
							<td align=center><input type="button" value="회원 가입"
								onclick="userCreate()"> &nbsp; <input type="button"
								value="취소" onClick="userCreate_cancel()"></td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</div>


	<!-- <form name='f' method="post" >
	ID<input type="text" name="user_id" value=""><br>
	P/W<input type="text" name="user_password" value=""><br>
	이름<input type="text" name="user_name" value=><br>
	이메일<input type="text" name="user_email" value=><br>
	번호<input type="text" name="user_phone" value=><br>
	포인트<input type="text" name="user_point" value="1000"><br>

</form>
	<input type="button" value="회원가입" value="userCreate()"> -->

</body>
</html>