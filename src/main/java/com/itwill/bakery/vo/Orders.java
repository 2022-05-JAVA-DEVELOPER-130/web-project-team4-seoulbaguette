package com.itwill.bakery.vo;

import java.sql.Date;

public class Orders {
	private int o_no;
	private String o_desc;
	private Date o_date;
	private int o_price;
	private String user_id;
	private int add_no;
	
	public Orders() {
		// TODO Auto-generated constructor stub
	}

	public Orders(int o_no, String o_desc, Date o_date, int o_price, String user_id, int add_no) {
		super();
		this.o_no = o_no;
		this.o_desc = o_desc;
		this.o_date = o_date;
		this.o_price = o_price;
		this.user_id = user_id;
		this.add_no = add_no;
	}

	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	public String getO_desc() {
		return o_desc;
	}

	public void setO_desc(String o_desc) {
		this.o_desc = o_desc;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public int getO_price() {
		return o_price;
	}

	public void setO_price(int o_price) {
		this.o_price = o_price;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getAdd_no() {
		return add_no;
	}

	public void setAdd_no(int add_no) {
		this.add_no = add_no;
	}

	@Override
	public String toString() {
		return "orders [o_no=" + o_no + ", o_desc=" + o_desc + ", o_date=" + o_date + ", o_price=" + o_price
				+ ", user_id=" + user_id + ", add_no=" + add_no + "]";
	}
	
}
