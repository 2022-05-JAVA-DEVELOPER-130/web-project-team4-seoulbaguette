package com.itwill.bakery.vo;

import java.sql.Date;

public class Coupon {
	private int c_no;
	private Date c_start_date;
	private Date c_end_date;
	private int c_discount;
	private String user_id;
	
	public Coupon() {
		// TODO Auto-generated constructor stub
	}

	public Coupon(int c_no, Date c_start_date, Date c_end_date, int c_discount, String user_id) {
		super();
		this.c_no = c_no;
		this.c_start_date = c_start_date;
		this.c_end_date = c_end_date;
		this.c_discount = c_discount;
		this.user_id = user_id;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public Date getC_start_date() {
		return c_start_date;
	}

	public void setC_start_date(Date c_start_date) {
		this.c_start_date = c_start_date;
	}

	public Date getC_end_date() {
		return c_end_date;
	}

	public void setC_end_date(Date c_end_date) {
		this.c_end_date = c_end_date;
	}

	public int getC_discount() {
		return c_discount;
	}

	public void setC_discount(int c_discount) {
		this.c_discount = c_discount;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "coupon [c_no=" + c_no + ", c_start_date=" + c_start_date + ", c_end_date=" + c_end_date
				+ ", c_discount=" + c_discount + ", user_id=" + user_id + "]";
	}
	
	
}
