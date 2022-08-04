<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function userCreate() {
		f.action = "user_write_form.jsp";
		f.submit();
	}

	function login() {
		if (f.userId.value == "") {
			alert("사용자 아이디를 입력하십시요.");
			f.userId.focus();
			return false;
		}
		if (f.password.value == "") {
			alert("비밀번호를 입력하십시요.");
			f.password.focus();
			return false;
		}

		f.action = "user_login_action.jsp";
		f.submit();
	}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->  
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			
			<!-- include_common_left.jsp end-->
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
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>로그인 페이지</b></td>
								</tr>
							</table> <!-- login Form  -->
							<form name="f" method="post" >
								<table border="0" cellpadding="0" cellspacing="1"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">사용자
											아이디</td>
										<td width=490 align="left" bgcolor="ffffff"
											style="padding-left: 10px"><input type="text"
											style="width: 150" name="u_id" value="">&nbsp;&nbsp;<font color="red"></font></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호</td>
										<td width=490 align="left" bgcolor="ffffff"
											style="padding-left: 10px"><input type="password"
											style="width: 150" name="u_pw" value="">&nbsp;&nbsp;<font color="red"></font></td>
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
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>