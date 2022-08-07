function productInsert() {
	document.f.action = "admin_product_insert_action.jsp";
	document.f.method = 'POST';
	document.f.submit();
}

function productCancel(){
location.href="product_list.jsp";

}

function productCancelM(){
document.f.action = "product_detail.jsp";
	document.f.method = 'POST';
	document.f.submit();
}

function productModifyForm(){
document.product_detail_form.action="admin_product_modify_form.jsp";
document.product_detail_form.method="post";
document.product_detail_form.submit();

}

function productModify(){
document.f.action="admin_product_modify_action.jsp";
document.f.method="post";
document.f.submit();
}

function checkAdmin(id){
if(id=="admin"){
document.getElementById("admin_m").disabled=false;
}else{
document.getElementById("admin_m").disabled=true;
}

}