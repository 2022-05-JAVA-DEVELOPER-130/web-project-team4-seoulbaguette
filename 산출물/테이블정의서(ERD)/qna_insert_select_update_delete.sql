--새글쓰기
--insert
desc QnA;
                
insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth) 
        values(QnA_qna_no_SEQ.nextval,'yeji2345','게시판타이틀','내용',QnA_qna_no_SEQ.currval,1,0);
insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth) 
        values(QnA_qna_no_SEQ.nextval,'jungwook1234','게시판타이틀','내용',QnA_qna_no_SEQ.currval,1,0);
insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth) 
        values(QnA_qna_no_SEQ.nextval,'guntae123','게시판타이틀','내용',QnA_qna_no_SEQ.currval,1,0);
insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth) 
        values(QnA_qna_no_SEQ.nextval,'sungjun968','게시판타이틀','내용',QnA_qna_no_SEQ.currval,1,0);
insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth) 
        values(QnA_qna_no_SEQ.nextval,'juhee13','게시판타이틀','내용',QnA_qna_no_SEQ.currval,1,0);
insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth) 
        values(QnA_qna_no_SEQ.nextval,'woohuck45','게시판타이틀','내용',QnA_qna_no_SEQ.currval,1,0);
        
--답변쓰기   
--update
update QnA set step=step+1 where step > 1 and groupno=2;
--insert
insert into QnA(qna_no,user_id,qna_title,qna_content,groupno,step,depth) 
        values(QnA_qna_no_SEQ.nextval,'jungwook1234','게시판타이틀','내용',2,2,1);
        
--select
select 
