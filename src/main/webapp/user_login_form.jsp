<%@page import="com.itwill.bakery.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
String loginId = (String)request.getAttribute("loginId");
if(loginId == null) loginId = "";
String msg1 = (String)request.getAttribute("msg1");
if(msg1 == null) msg1 = "";
String msg2 = (String)request.getAttribute("msg2");
if(msg2 == null) msg2 = "";
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src=js/user.js></script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
	
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
		</div>
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
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>
											로그인</b></td>
								</tr>
							</table> <!-- login Form  -->
							<br><br><br>
							<form name="f" >
								<table border="0" cellpadding="0" cellspacing="1"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E5F0FA" height="40">사용자
											아이디</td>
										<td width=490 align="left" bgcolor="ffffff"
											style="padding-left: 10px"><input type="text"
											style="width: 150px; height:15px; font-size: 18px;"  name="userId" value="<%=loginId%>">&nbsp;&nbsp;<font color="red"><%=msg1%></font></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E5F0FA" height="40">비밀번호</td>
										<td width=490 align="left" bgcolor="ffffff"
											style="padding-left: 10px"><input type="password"
											style="width: 150px; height:15px; font-size: 18px" name="password" value="">&nbsp;&nbsp;<font color="red"><%=msg2%></font></td>
									</tr>
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align=center>
									<input type="button" value="로그인"	onClick="login();"> &nbsp; 
									<input type="button" value="회원가입" onClick="userCreateForm()"></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
		
		</div>
	</div>
	<!--container end-->

</body>
</html>