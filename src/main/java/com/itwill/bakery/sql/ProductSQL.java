package com.itwill.bakery.sql;

public class ProductSQL {
	
	public final static String PRODUCT_SELECT_BY_CATEGORY
				= "select * from product where category_no=?";

	public final static String PRODUCT_SELECT_BY_NO
				= "select * from product where p_no=?";

	public final static String PRODUCT_SELECT_ALL
				= "select * from product";
	
	public final static String PRODUCT_UPDATE_BY_NO
				= "update product set p_name=?,p_price=?, p_desc=? where p_no=?";
	
	public final static String PRODUCT_DELETE_BY_NO
				="delete from product where p_no=?";
}
