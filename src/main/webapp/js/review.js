/**
 * 
 */

function review_writeCheck(form,check){
	if(check==0){
		actionAdr="review_write_form.jsp";
	}else if(check==1){
		actionAdr="review_view.jsp";
	}
	document.getElementsByName(form)[0].method='POST';
	document.getElementsByName(form)[0].action = actionAdr;
	document.getElementsByName(form)[0].submit();
	
}


