<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bakery.vo.Address"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bakery.vo.User"%>
<%@page import="com.itwill.bakery.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="user_login_check.jspf"%>
    <%
   
    UserService userService=new UserService();
    User user=userService.selectUser(sUserId);
    List<Address> addressList=userService.selectAddress(user);
    int check=addressList.size();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/address.js"></script>
</head>
<body onload="addressCheck(<%=check%>)">
<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>내정보 관리
											- 주소록 보기<b></td>
											
								</tr>
							</table> <!-- view Form  -->
							<% for(int i=0;i<addressList.size();i++){ %>
							<form id="addr_<%=i%>" method="post">
							<input type="hidden" name="add_no" value="<%=addressList.get(i).getAdd_no()%>"   />
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">
											<%=i+1%></td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=addressList.get(i).getAddress()%>
										</td>
									</tr>
								
								
								</table>
									<input type="button" value="수정" onClick="addressModify('addr_<%=i%>')"/>&nbsp; 
									<input type="button" value="삭제" onClick="addressRemove('addr_<%=i%>')"/>&nbsp;
							</form> <br />
							
							<%} %>
						</td>
					</tr>
				</table>
				<form id='addreturn'>
							</form>
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align=center>
									<input type="button" value="돌아가기" onClick="addressBack()"/>&nbsp;
									<input type="button" id="addcheck" value="추가하기"  onclick="addressAdd()"/>&nbsp;
									</td>
								</tr>
							</table>
			</div>

</body>
</html>