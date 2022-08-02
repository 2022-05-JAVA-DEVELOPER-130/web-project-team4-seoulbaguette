	package com.itwill.bakery.vo;

import java.sql.Date;

public class QnA {
	private int q_no;
	private String user_id;
	private String q_title;
	private String q_content;
	private Date q_date;
	private int q_count;
	
	public QnA() {
		// TODO Auto-generated constructor stub
	}

	public QnA(int q_no, String user_id, String q_title, String q_content, Date q_date, int q_count) {
		super();
		this.q_no = q_no;
		this.user_id = user_id;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_date = q_date;
		this.q_count = q_count;
	}

	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public Date getQ_date() {
		return q_date;
	}

	public void setQ_date(Date q_date) {
		this.q_date = q_date;
	}

	public int getQ_count() {
		return q_count;
	}

	public void setQ_count(int q_count) {
		this.q_count = q_count;
	}

	@Override
	public String toString() {
		return "QnA [q_no=" + q_no + ", user_id=" + user_id + ", q_title=" + q_title + ", q_content=" + q_content
				+ ", q_date=" + q_date + ", q_count=" + q_count + "]";
	}
	

}
