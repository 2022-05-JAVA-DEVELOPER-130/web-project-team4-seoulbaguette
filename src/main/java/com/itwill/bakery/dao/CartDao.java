package com.itwill.bakery.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bakery.sql.CartSQL;
import com.itwill.bakery.vo.Cart;
import com.itwill.bakery.vo.Product;

public class CartDao {
	private DataSource dataSource;
	
	public CartDao() throws Exception{
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("/com/itwill/bakery/common/jdbc.properties"));
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("driverClass"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("user"));
		basicDataSource.setPassword(properties.getProperty("password"));
		dataSource = basicDataSource;
	}
	
	//cart에있는 제품수
	public int cartProductCount(Cart cart)throws Exception{
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(CartSQL.SELECT_CART_PRODUCT_COUNT_BY_USERID_P_NO);
		pstmt.setString(1, cart.getUser_id());
		pstmt.setInt(2, cart.getProduct().getP_no());
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int product_count=rs.getInt("product_count");
		pstmt.close();
		con.close();
		return product_count;
	}
	
	//cart insert
	public int insertCart(Cart newCart)throws Exception{
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(CartSQL.INSERT_CART);
		pstmt.setInt(1, newCart.getCart_qty());
		pstmt.setString(2, newCart.getUser_id());
		pstmt.setInt(3, newCart.getProduct().getP_no());
		int rowCount=pstmt.executeUpdate();
		pstmt.close();
		con.close();
		return rowCount;
	}
	
	//cart update
	public int updateQtyByPNo(Cart cart)throws Exception{
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(CartSQL.UPDATE_CART_BY_USERID_P_NO);
		pstmt.setInt(1, cart.getCart_qty());
		pstmt.setString(2, cart.getUser_id());
		pstmt.setInt(3, cart.getProduct().getP_no());
		int rowCount=pstmt.executeUpdate();
		pstmt.close();
		con.close();
		return rowCount;
	}
	
	//cart delete 1
	public int deleteCartByCNo(Cart cart)throws Exception{
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(CartSQL.DELETE_CART_BY_CART_NO);
		pstmt.setInt(1, cart.getCart_no());
		int deleteRowCount=pstmt.executeUpdate();
		pstmt.close();
		con.close();
		return deleteRowCount;
	}
	
	//cart delete all
	 public int deleteCart(Cart cart)throws Exception{
		  Connection con=dataSource.getConnection();
		  PreparedStatement pstmt=con.prepareStatement(CartSQL.DELETE_CART_BY_USERID);
		  pstmt.setString(1, cart.getUser_id());
		  int rowCount=pstmt.executeUpdate();
		  pstmt.close();
		  con.close();
		  return rowCount;
	  }
	 
	
	//cart list
	public List<Cart> selectCart(String user_id)throws Exception{
		List<Cart> cartList=new ArrayList<Cart>();
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(CartSQL.SELECT_CART_BY_USERID);
		pstmt.setString(1, user_id);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()) {
			Cart cart=
					new Cart(rs.getInt("cart_no"),
							rs.getInt("cart_qty"),
							new Product(rs.getInt("p_no"),
										rs.getString("p_name"),
										rs.getInt("p_price"),
										rs.getString("p_image"),
										rs.getString("p_desc"),
										rs.getInt("p_click_count"),
										rs.getInt("category_no")),
							user_id);
			cartList.add(cart);
		}
		con.close();
		return cartList;
	}
	
	
	
}
