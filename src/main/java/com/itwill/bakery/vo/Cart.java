package com.itwill.bakery.vo;

public class Cart {
	private int cart_no;
	private int cart_qty;
	private String user_id;
	private int p_no;
	
	 public Cart() {
		// TODO Auto-generated constructor stub
	}

	public Cart(int cart_no, int cart_qty, String user_id, int p_no) {
		super();
		this.cart_no = cart_no;
		this.cart_qty = cart_qty;
		this.user_id = user_id;
		this.p_no = p_no;
	}

	public int getCart_no() {
		return cart_no;
	}

	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}

	public int getCart_qty() {
		return cart_qty;
	}

	public void setCart_qty(int cart_qty) {
		this.cart_qty = cart_qty;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	@Override
	public String toString() {
		return "cart [cart_no=" + cart_no + ", cart_qty=" + cart_qty + ", user_id=" + user_id + ", p_no=" + p_no + "]";
	}
	 
}
