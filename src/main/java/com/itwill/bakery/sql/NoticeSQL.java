package com.itwill.bakery.sql;

public class NoticeSQL {
	public final static String NOTICE_LIST =
			"select * from notice";
	public final static String NOTICE_SELECT_BY_NO =
			"select * from notice where notice_no=?";

	public final static String NOTICE_LIST_PAGE
			="SELECT * FROM ( SELECT rownum idx, s.*  FROM"
					+"	( SELECT * FROM Notice"
					+"		ORDER BY notice_no ASC"
					+"	) s"
					+"	 )WHERE idx >= ? AND idx <= ? ";
	
	public static final String NOTICE_TOTAL_COUNT
			="select count(*) from Notice";
}