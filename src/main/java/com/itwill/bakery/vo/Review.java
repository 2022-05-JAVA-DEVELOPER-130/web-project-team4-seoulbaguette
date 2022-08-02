package com.itwill.bakery.vo;

import java.sql.Date;

public class Review {
	private int r_no;
	private String r_title;
	private Date r_date;
	private int r_starGrade;
	private String r_content;
	private String user_id;
	private int p_no;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(int r_no, String r_title, Date r_date, int r_starGrade, String r_content, String user_id, int p_no) {
		super();
		this.r_no = r_no;
		this.r_title = r_title;
		this.r_date = r_date;
		this.r_starGrade = r_starGrade;
		this.r_content = r_content;
		this.user_id = user_id;
		this.p_no = p_no;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	public int getR_starGrade() {
		return r_starGrade;
	}

	public void setR_starGrade(int r_starGrade) {
		this.r_starGrade = r_starGrade;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
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
		return "review [r_no=" + r_no + ", r_title=" + r_title + ", r_date=" + r_date + ", r_starGrade=" + r_starGrade
				+ ", r_content=" + r_content + ", user_id=" + user_id + ", p_no=" + p_no + "]";
	}
	
}
