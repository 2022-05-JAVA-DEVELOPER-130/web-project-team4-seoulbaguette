package com.itwill.bakery.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bakery.sql.ProductSQL;
import com.itwill.bakery.vo.Product;

public class ProductDao {

	private DataSource dataSource;
	
	public ProductDao() throws Exception {
		BasicDataSource basicDataSource=new BasicDataSource();
		
		Properties properties=new Properties();
		properties.load(this.getClass().getResourceAsStream("/com/itwill/bakery/common/jdbc.properties"));
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("user"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource = basicDataSource;
	}
	
	/*
	 * 카테고리별 상품 검색
	 */
	public Product selectByNo(int category_no) throws Exception {
		Product product = null;
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_BY_NO);
		pstmt.setInt(1, category_no);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()) {
			product = new Product(rs.getInt("p_no"), rs.getString("p_name"), rs.getInt("p_price"), 
								  rs.getString("p_image"), rs.getString("p_desc"), 
								  rs.getInt("p_click_count"), rs.getInt("category_no"));
		}
		rs.close();
		pstmt.close();
		con.close();
		
		return product;
	}
	
	/*
	 * 전체 상품검색
	 */
	public List<Product> selectAll() throws Exception {
		List<Product> productList=new ArrayList<Product>();
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_ALL);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()) {
			Product product = new Product(rs.getInt("p_no"), rs.getString("p_name"), rs.getInt("p_price"), 
					  			  rs.getString("p_image"), rs.getString("p_desc"), 
					  			  rs.getInt("p_click_count"), rs.getInt("category_no"));
			productList.add(product);
		}
		rs.close();
		pstmt.close();
		con.close();
		return productList;
	}

}
