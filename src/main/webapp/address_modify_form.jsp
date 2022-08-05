<%@page import="com.itwill.bakery.vo.Address"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int add_no=Integer.parseInt(request.getParameter("add_no"));
    UserService userService=new UserService();
    Address address=userService.selectAddressno(add_no);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/address.js"></script>
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
											- 주소록 수정<b></td>
								</tr>
							</table> <!-- view Form  -->
							
							<form name=f method="post">
							<input type="hidden" name="add_no" value="<%=address.getAdd_no()%>"   />
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">
											</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<input type="text" style="width: 150px"
									name="address" value="<%=address.getAddress()%>">
										</td>
									</tr>
								
								
								</table>
									
								
							</form> <br />
							
					<table border=0 cellpadding=0 cellspacing=1>
						<tr>
							<td align=center><input type="button" value="수정"
								onclick="addressModifyAction()"> &nbsp; <input type="button"
								value="취소" onClick="addressCancel()"></td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
				</div>

</body>
</html>