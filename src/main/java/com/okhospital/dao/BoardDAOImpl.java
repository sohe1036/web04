package com.okhospital.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.BoardDTO;

//현재저장소랑 데이터 일치시키기 위해 쓰는 애너테이션
@Repository
public class BoardDAOImpl implements BoardDAO {
	//구현하기위해 인터페이스 상속은 오버라이드 해줘야함
	
	//해당 프로그램이 필요하면 알아서 사용하게 되어 스스로 제어하게 됨 => IoC : 제어의역전
	//객체주입->root-context 호출해서 xml에있는거 쓸 수 있음
	@Autowired
	SqlSession sqlSession;		//boardMapper.xml의내용을 include한 것과 같음
	
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override
	public BoardDTO boardRead(int seq) throws Exception {
		return sqlSession.selectOne("board.boardRead",seq);
	}


	@Override
	public void boardWrite(BoardDTO bdto) throws Exception {
		sqlSession.insert("board.boardWrite",bdto);
		
	}

	@Override
	public void boardUpdate(BoardDTO bdto) throws Exception {
		sqlSession.update("board.boardUpdate",bdto);
		
	}

	@Override
	public void boardDelete(int seq) throws Exception {
		sqlSession.delete("board.boardDelete",seq);
		
	}
	
}
