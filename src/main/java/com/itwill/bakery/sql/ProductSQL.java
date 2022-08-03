package com.itwill.bakery.sql;

public class ProductSQL {
	
	public final static String PRODUCT_SELECT_BY_CATEGORY
				= "select * from product where category_no=?";

	public final static String PRODUCT_SELECT_BY_NO
				= "select * from product where p_no=?";

	public final static String PRODUCT_SELECT_ALL
				= "select * from product";
}
