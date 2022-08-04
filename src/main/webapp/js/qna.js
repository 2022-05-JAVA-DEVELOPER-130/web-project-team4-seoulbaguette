/**
 * 
 */

function qnaCreate() {
		location.href = "qna_write_form.jsp";
}

function qnaCreateMsg() {
	if(f.title.value == ""){
		alert("제목을 입력하세요.");
		f.title.focus();
	}
	if(f.user_id.value == ""){
		alert("작성자를 입력하세요.");
		f.user_id.focus();
		return false;
	}
	if(f.content.value == ""){
		alert("내용을 입력하세요.");
		f.content.focus();
		return false;
	}
	
	f.action="qna_write_action.jsp";
	f.method='POST';
	f.submit();
}

function qnaReplyCreate() {
	f.action="qna_reply_write_form.jsp";
	f.method='POST';
	f.submit();
}

function qnaUpdate(){
	f.action="qna_modify_form.jsp";
	f.submit();
}

function qnaRemove(){
	if(confirm("정말 삭제하시겠습니까?")){
		f.action="qna_remove_action.jsp";
		f.submit();
	}
}

function qnaList() {
	f.action="qna_list.jsp";
	f.submit();
}
