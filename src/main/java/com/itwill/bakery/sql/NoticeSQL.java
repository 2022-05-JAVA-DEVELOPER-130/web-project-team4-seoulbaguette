package com.itwill.bakery.sql;

public class NoticeSQL {
	public final static String NOTICE_LIST =
			"select * from notice";
	public final static String NOTICE_SELECT_BY_NO =
			"select * from food where notice_no=?";

}