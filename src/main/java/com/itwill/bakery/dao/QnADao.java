package com.itwill.bakery.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bakery.sql.QnASQL;
import com.itwill.bakery.vo.QnA;

public class QnADao {

	private DataSource dataSource;
	
	public QnADao() throws Exception {
		BasicDataSource basicDataSource=new BasicDataSource();
		
		Properties properties=new Properties();
		properties.load(this.getClass().getResourceAsStream("/com/itwill/bakery/common/jdbc.properties"));
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("username"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource = basicDataSource;
	}
	
	//게시물insert
	
	public int create(QnA qna) throws Exception {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(QnASQL.QNA_INSERT);
			pstmt.setString(1, qna.getUser_id());
			pstmt.setString(2, qna.getQna_title());
			pstmt.setString(3, qna.getQna_content());
			
			int result=pstmt.executeUpdate();
			
			return result;
			
		}finally {
			con.close();
		}
	}
	
}
