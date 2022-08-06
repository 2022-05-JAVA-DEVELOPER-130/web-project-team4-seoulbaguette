package com.itwill.bakery.service;

import java.util.List;

import com.itwill.bakery.dao.NoticeDao;
import com.itwill.bakery.vo.Notice;
import com.itwill.bakery.vo.NoticeListPageMaker;
import com.itwill.bakery.vo.PageMaker;

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

	// 전체리스트(페이지)
	public NoticeListPageMaker findNoticeList(int currPage) throws Exception {
		int totalCount=noticeDao.getNoticeCount();
		
		PageMaker pageMaker=new PageMaker(totalCount, currPage);
		
		List<Notice> noticeList=
				noticeDao.findList(pageMaker.getPageBegin(), pageMaker.getPageEnd());
		
		NoticeListPageMaker pageMakerNoticeList = new NoticeListPageMaker();
		pageMakerNoticeList.totCount=totalCount;
		pageMakerNoticeList.itemList=noticeList;
		pageMakerNoticeList.pageMaker=pageMaker;
		return pageMakerNoticeList;
		
		
	}
}
