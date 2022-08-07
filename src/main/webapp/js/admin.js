function productInsert() {
	document.f.action = "admin_product_insert_action.jsp";
	document.f.method = 'POST';
	document.f.submit();
}

function productCancel(){
location.href="product_list.jsp";

}