package com.itwill.bakery.vo;

public class OrderItem {
	private int oi_no;
	private int oi_qty;
	private int p_no;
	private int o_no;
	
	 public OrderItem() {
		// TODO Auto-generated constructor stub
	}

	public OrderItem(int oi_no, int oi_qty, int p_no, int o_no) {
		super();
		this.oi_no = oi_no;
		this.oi_qty = oi_qty;
		this.p_no = p_no;
		this.o_no = o_no;
	}

	public int getOi_no() {
		return oi_no;
	}

	public void setOi_no(int oi_no) {
		this.oi_no = oi_no;
	}

	public int getOi_qty() {
		return oi_qty;
	}

	public void setOi_qty(int oi_qty) {
		this.oi_qty = oi_qty;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	@Override
	public String toString() {
		return "order_item [oi_no=" + oi_no + ", oi_qty=" + oi_qty + ", p_no=" + p_no + ", o_no=" + o_no + "]";
	}
	
}
