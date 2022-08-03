package com.itwill.bakery.sql;

public class QnASQL {
	
public static final String QNA_INSERT
= "insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step) values(QnA_qna_no_SEQ.nextval,?,?,?,QnA_qna_no_SEQ.currval,1)";

public static final String QNA_REPLY_UPDATE
= "update QnA set step=step+1 where step > 1 and groupno=?";

public static final String QNA_REPLY_INSERT
="insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth)"
		+ "        values(QnA_qna_no_SEQ.nextval,?,?,?,?,?,?)";

public static final String QNA_SELECT_BY_USERID
="select * from QnA where user_id=?";

public static final String QNA_TOTAL_COUNT
="select count(*) from QnA";

public static final String QNA_LIST
="select qna_no,qna_title,user_id,qna_date,qna_readcount,groupno,step,depth"
		+ "		from QnA order by groupno desc,step asc";

public static final String QNA_UPDATE
="update QnA set qna_title=?,qna_content=? where qna_no=?";

public static final String QNA_UPDATE_READ_COUNT
="update QnA set qna_readcount=qna_readcount+1 where qna_no=?";

public static final String QNA_DELETE
="delete from QnA where groupno=?";
}
