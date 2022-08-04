

function addressModify(form){
	document.getElementsByName(form)[0].action = "shop_main.jsp";
	document.getElementsByName(form)[0].method = "POST";
	document.getElementsByName(form)[0].submit();
}

function addressRemove(form){
	document.getElementsByName(form)[0].action = "shop_main.jsp";
	document.getElementsByName(form)[0].method = "POST";
	document.getElementsByName(form)[0].submit();
}

function addressBack(){
	document.f.action = "user_view.jsp";
	document.f.method = "POST";
	document.f.submit();
}



