/**
 * 
 */

function userCreate(){
	if (document.f.user_id.value == "") {
			alert("사용자 아이디를 입력하십시요.");
			f.user_id.focus();
			return false;
		}
		if (document.f.user_password.value == "") {
			alert("비밀번호를 입력하십시요.");
			f.user_password.focus();
			return false;
		}
		if (document.f.user_password2.value == "") {
			alert("비밀번호확인을 입력하십시요.");
			f.user_password2.focus();
			return false;
		}
		if (document.f.user_name.value == "") {
			alert("이름을 입력하십시요.");
			f.user_name.focus();
			return false;
		}
		if (document.f.user_email.value == "") {
			alert("이메일 주소를 입력하십시요.");
			f.user_email.focus();
			return false;
		}
		if (document.f.user_phone.value == "") {
			alert("핸드폰 번호를 입력하십시요.");
			f.user_phone.focus();
			return false;
		}
		if (f.user_password.value != f.user_password2.value) {
			alert("비밀번호와 비밀번호확인은 일치하여야합니다.");
			f.user_password.focus();
			f.password.select();
			return false;
		}
	
	
	document.f.action = "user_write_action.jsp";
	document.f.method = "POST";
	document.f.submit();
}

function userCreate_cancel(){
	document.f.action = "shop_main.jsp";
	document.f.method = "POST";
	document.f.submit();
}