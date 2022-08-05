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



