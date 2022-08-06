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
import com.itwill.bakery.sql.QnASQL;
import com.itwill.bakery.vo.Notice;

public class NoticeDao {
	
	private DataSource dataSource;
	
	public NoticeDao() throws Exception {
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
	
	public ArrayList<Notice> findList(int start, int end) throws Exception {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		ArrayList<Notice> notices=new ArrayList<Notice>();
		
		try {
			con=dataSource.getConnection();
			StringBuffer sql=new StringBuffer();
			sql.append(NoticeSQL.NOTICE_LIST_PAGE);
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Notice notice = new Notice(rs.getInt("notice_no"), rs.getString("notice_title"), rs.getDate("notice_date"),
						rs.getString("notice_content"));
				notices.add(notice);
			}
			
		} finally {
			if(pstmt!=null) {
				try {
					pstmt.close();
				}catch (Exception ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (Exception ex) {
				}
			}
		}
		return notices;
	}
	
	// 게시물 총 건수

		public int getNoticeCount() throws Exception {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			int count = 0;
			try {
				con = dataSource.getConnection();
				pstmt = con.prepareStatement(NoticeSQL.NOTICE_TOTAL_COUNT);
				rs = pstmt.executeQuery();

				if (rs.next())
					count = rs.getInt(1); 

			} finally {
				try {
					if (rs != null)
						rs.close();
				} catch (Exception ex) {
				}
				try {
					if (pstmt != null)
						pstmt.close();
				} catch (Exception ex) {
				}
				try {
					if (con != null)
						con.close();
				} catch (Exception ex) {
				}
			}

			return count;
		}
	
	
	
	
	
	
	
	
	
	
	
	
}