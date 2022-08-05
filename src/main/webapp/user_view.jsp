<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userid="guard1";
    UserService userService=new UserService();
    User user=userService.selectUser(userid);
    
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
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>내정보 관리
											- 내정보보기</b></td>
								</tr>
							</table> <!-- view Form  -->
							<form name="f" method="post">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">
											아이디</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getUser_id()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getUser_name()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이메일
											주소</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getUser_email()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">핸드폰
											번호</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getUser_phone()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">포인트
											</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getUser_point()%>
										</td>
									</tr>
								
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align=center>
									<input type="button" value="내정보수정" onClick="userModify()">&nbsp; 
									<input type="button" value="탈퇴" onClick="userPasswordCheck()">&nbsp;
									<input type="button" value="주소록" onClick="userAddress()">
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>

</body>
</html>