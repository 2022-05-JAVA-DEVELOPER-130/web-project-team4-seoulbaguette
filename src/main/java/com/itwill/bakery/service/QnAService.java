package com.itwill.bakery.service;

import java.util.List;

import com.itwill.bakery.dao.QnADao;
import com.itwill.bakery.vo.PageMaker;
import com.itwill.bakery.vo.QnA;
import com.itwill.bakery.vo.QnAListPageMaker;

public class QnAService {
	private QnADao qnaDao;
	
	public QnAService() throws Exception{
		qnaDao=new QnADao();
	}
	
	//게시물 생성
	public int create(QnA qna) throws Exception {
		return qnaDao.create(qna);
	}
	
	//답글쓰기
	public int createReply(QnA qna) throws Exception {
		return qnaDao.createReply(qna);
	}
	
	//게시물1개
	public QnA findQnA(int qna_no) throws Exception {
		return qnaDao.findByQnANo(qna_no);
	}
	
	//게시물수정
	public int update(QnA qna) throws Exception {
		return qnaDao.update(qna);
	}
	
	//전체게시물리스트
	public QnAListPageMaker findQnAList(int currPage) throws Exception{
		int totalCount = qnaDao.getQnACount();
		
		PageMaker pageMaker=new PageMaker(totalCount, currPage);
		
		List<QnA> qnaList = 
				qnaDao.findList(pageMaker.getPageBegin(), pageMaker.getPageEnd());
		
		QnAListPageMaker pageMakerQnAList=new QnAListPageMaker();
		pageMakerQnAList.totCount=totalCount;
		pageMakerQnAList.itemList=qnaList;
		pageMakerQnAList.pageMaker=pageMaker;
		return pageMakerQnAList;
	}
	
	
	
	
}
