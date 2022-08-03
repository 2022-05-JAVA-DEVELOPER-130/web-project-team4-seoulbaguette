package com.itwill.bakery.service;

import java.util.List;

import com.itwill.bakery.dao.NoticeDao;
import com.itwill.bakery.vo.Notice;

public class NoticeService {

	private NoticeDao noticeDao;

	public NoticeService() throws Exception {
		noticeDao = new NoticeDao();
	}

	// 게시물 번호로 공지사항 보기
	public Notice selectByNoticeNo(int notice_no) throws Exception {
		return noticeDao.selectByNoticeNo(notice_no);
	}

	
	// 전체 공지사항 보기
	public List<Notice> selectAllNotice() throws Exception {
		return noticeDao.selectAllNotice();	
	}

}
