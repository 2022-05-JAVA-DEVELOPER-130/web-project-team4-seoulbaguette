package com.itwill.bakery.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bakery.sql.NoticeSQL;
import com.itwill.bakery.vo.Notice;

public class NoticeDao {
	
	private DataSource dataSource;
	
	public NoticeDao() throws Exception {
		BasicDataSource basicDataSource=new BasicDataSource();
		
		Properties properties=new Properties();
		properties.load(this.getClass().getResourceAsStream("/com/itwill/bakery/common/jdbc.properties"));
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("username"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource = basicDataSource;
	}

	/*
	 * selelctByNo : 게시물 번호로 검색
	 */
	public Notice selectByNoticeNo(int notice_no) throws Exception {
		Notice notice = null;
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(NoticeSQL.NOTICE_SELECT_BY_NO);
		pstmt.setInt(1, notice_no);
		ResultSet rs = pstmt.executeQuery();

		if (rs.next()) {
			notice = new Notice(
					rs.getInt("notice_no"),
					rs.getString("notice_title"),
					rs.getDate("notice_date"),
					rs.getString("notice_content"));
		}
		rs.close();
		pstmt.close();
		con.close();
		return notice;
	}

	/*
	 * selectAll : 게시물 전체 검색
	 */
	public List<Notice> selectAllNotice() throws Exception {
		List<Notice> noticeList = new ArrayList<Notice>();

		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(NoticeSQL.NOTICE_LIST);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			Notice notice = new Notice(rs.getInt("notice_no"), rs.getString("notice_title"), rs.getDate("notice_date"),
					rs.getString("notice_content"));
			noticeList.add(notice);
		}
		rs.close();
		pstmt.close();
		con.close();
		return noticeList;
	}
	
	
}