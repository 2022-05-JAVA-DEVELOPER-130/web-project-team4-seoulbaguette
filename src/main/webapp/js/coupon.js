/**
 * 
 */

function couponCreate() {
	document.f.method='POST';
	document.f.action = "coupon_create_action.jsp";
	document.f.submit();
}

function couponDelete() {
	document.f.method='POST';
	document.f.action = "coupon_delete_action.jsp";
	document.f.submit();
}

function couponOrderList(){
	document.order_create_form.method='POST';
	document.order_create_form.action = "coupon_list_order.jsp";
	document.order_create_form.submit();
}

