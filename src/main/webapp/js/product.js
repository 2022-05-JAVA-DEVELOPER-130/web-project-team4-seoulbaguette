/**
 * 
 */

function order_create_form() {


	document.product_detail_form.cart_qty.value = document.add_cart_form.cart_qty.value;
	document.product_detail_form.method = 'POST';
	document.product_detail_form.action = 'order_create_form.jsp';
	document.product_detail_form.submit();

}
function productList() {
	location.href = 'product_list.jsp';
}

function add_cart_popup_window(){
	var left = Math.ceil(( window.screen.width)/3);
	var top = Math.ceil(( window.screen.height)/3);
	console.log(left);
	console.log(top);
	var cartWin = window.open("about:blank","cartForm","width=420,height=200,top="+top+",left="+left+",location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no");
	document.add_cart_form.action = 'cart_add_action_popup_window.jsp';
	document.add_cart_form.target = 'cartForm';
	document.add_cart_form.method = 'POST';
	document.add_cart_form.submit();
}