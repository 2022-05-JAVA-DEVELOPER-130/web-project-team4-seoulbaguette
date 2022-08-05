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

function aaa() {
	
}