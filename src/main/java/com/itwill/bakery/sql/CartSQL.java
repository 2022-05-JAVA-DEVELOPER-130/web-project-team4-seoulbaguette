
package com.itwill.bakery.sql;

public class CartSQL {
	public static final String INSERT_CART =
			"insert into cart(cart_no,cart_qty,user_id,p_no) values(cart_cart_no_SEQ.nextval,?,?,product_p_no_SEQ.nextval)";
	public static final String SELECT_CART_BY_USERID=
			"select * from cart c join product p on c.p_no=p.p_no where c.userid=?";
	public static final String UPDATE_CART_BY_USERID_P_NO=
			"update cart set cart_qty=cart_qty+? where userid=? and p_no=?";
	public static final String DELETE_CART_BY_USERID_P_NO=
			"delete cart where userid=? and p_no=?";
	public static final String DELETE_CART_BY_USERID=
			"delete cart where userid=?";
	public static final String SELECT_CART_PRODUCT_COUNT_BY_USERID_P_NO=
			"select count(*) product_count from cart where userid=? and p_no=?";
}
