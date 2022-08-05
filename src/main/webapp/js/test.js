   function order_create_form_submit() {
   
      document.order_create_form.method = 'POST';
      document.order_create_form.action = 'order_create_action.jsp';
      document.order_create_form.submit();
   }


   function point(point) {
      
   }

function calPoint(tot,point){
	return tot-point;
}

function calPointF(){
	document.order_create_form.method="post";
	document.order_create_form.action = 'point_cal_action.jsp';
    document.order_create_form.submit();
	
	
}

function order_test(){
	document.product_detail_form.cart_qty.value = document.add_cart_form.cart_qty.value;
	document.product_detail_form.method = 'POST';
	document.product_detail_form.action = 'order_form_test.jsp';
	document.product_detail_form.submit();
	
}

