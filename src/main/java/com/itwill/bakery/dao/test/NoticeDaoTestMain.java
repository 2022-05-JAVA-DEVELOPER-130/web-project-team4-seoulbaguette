package com.itwill.bakery.dao.test;

import com.itwill.bakery.dao.NoticeDao;

public class NoticeDaoTestMain {
	public static void main(String[] args) throws Exception {
		NoticeDao noticeDao = new NoticeDao();
		System.out.println("1. 전체공지 보기");
		System.out.println(" "+noticeDao.selectAllNotice());
		System.out.println("2. 게시물 번호로 공지 보기");
		System.out.println(" "+noticeDao.selectByNoticeNo(1));
	}

}
