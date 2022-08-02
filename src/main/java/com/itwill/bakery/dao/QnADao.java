package com.itwill.bakery.dao;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

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
}
