package com.okhospital.dao;

import java.util.List;

import com.okhospital.dto.QnaDTO;
import com.okhospital.dto.SearchDTO;

public interface QnaDAO {
	//글 목록 => 메서드명 boardList(), 리턴 List<QnaDTO>   //서치->검색했을 때 목록
	public List<QnaDTO> qnaList(SearchDTO sdto) throws Exception;
	//글 목록
	public List<QnaDTO> qnaList() throws Exception;
	
	//질문 글 상세보기 매개변수 qno / 리턴 QnaDTO
	public QnaDTO qnaRead(int qno) throws Exception;
	
	//답변 글 상세보기
	public QnaDTO replyRead(int qno) throws Exception;

	//질문하기
	public void qnaWrite(QnaDTO qdto) throws Exception;
	
	//답변하기
	public void replyWrite(QnaDTO qdto) throws Exception;
	
	//질문 글 수정
	public void qnaUpdate(QnaDTO qdto) throws Exception;
	
	//답변 글 수정
	public void replyUpdate(QnaDTO qdto) throws Exception;
	
	//질문 글 삭제
	public void qnaDelete(int qno) throws Exception;
	
	//답변글 삭제
	public void replyDelete(int qno) throws	Exception;
}
