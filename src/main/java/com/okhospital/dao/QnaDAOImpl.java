package com.okhospital.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.QnaDTO;
import com.okhospital.dto.SearchDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	SqlSession sqlSession;

	//목록보기-SearchDTO매개
	@Override
	public List<QnaDTO> qnaList(SearchDTO sdto) throws Exception {
		return sqlSession.selectList("qna.qnaList", sdto);
	}
	//목록보기
	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return sqlSession.selectList("qna.qnaList");
	}
	//질문글 상세보기
	@Override
	public QnaDTO qnaRead(int qno) throws Exception {
		return sqlSession.selectOne("qna.qnaRead", qno);
	}
	//답변글 상세보기
	@Override
	public QnaDTO replyRead(int qno) throws Exception {
		return sqlSession.selectOne("qna.qnaRead", qno);
	}
	//질문글 쓰기
	@Override
	public void qnaWrite(QnaDTO qdto) throws Exception {
		sqlSession.update("qna.qnaWrite", qdto);
	}
	//답변글쓰기
	@Override
	public void replyWrite(QnaDTO qdto) throws Exception {
		sqlSession.update("qna.replyWrite", qdto);
		
	}
	//질문글 수정하기
	@Override
	public void qnaUpdate(QnaDTO qdto) throws Exception {
		sqlSession.update("qna.qnaUpdate", qdto);
	}
	//답변글 수정하기
	@Override
	public void replyUpdate(QnaDTO qdto) throws Exception {
		sqlSession.update("qna.qnaWrite", qdto);	
	}

	//질문글 삭제
	@Override
	public void qnaDelete(int qno) throws Exception {
		sqlSession.delete("qna.qnaDelete", qno);
	}
	//답변글 삭제
	@Override
	public void replyDelete(int qno) throws Exception {
		sqlSession.delete("qna.replyDelete", qno);
	}
}
