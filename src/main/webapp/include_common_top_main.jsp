<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	String sUserId=(String)session.getAttribute("s_u_id");
%>	
<script type="text/javascript">
	function login_message() {
		alert('로그인하세요');
		location.href = 'userinfo_login_form.jsp';
	}
</script>
<div id="menu">
	<div id="menu_title">SEOUL BAGUETTE</div>
	<ul>
	<%
		if(sUserId==null){
	%>
		<li><a href="user_login_form.jsp">LOGIN</a></li>
		<li><a href="user_view.jsp">MYPAGE</a></li>
		<li><a href="cart_view.jsp">CART</a></li>
		<%}else{ %>
		<li><a href="user_logout_action.jsp">LOGOUT</a></li>
		<li><a href="user_view.jsp">MYPAGE</a></li>
		<li><a href="cart_view.jsp">CART</a></li>
			<%} %>
	</ul>
</div>
<div id="sub_menu">
	<ul>
		<li id="menu_product"><a href="product_list.jsp">PRODUCT</a></li>
		<li id="menu_notice"><a href="notice_list.jsp">NOTICE</a></li>
		<li id="menu_qna"><a href="qna_list.jsp">Q&A</a></li>
		<li id="menu_coupon"><a href="coupon_view.jsp">EVENT</a></li>
	</ul>
</div>