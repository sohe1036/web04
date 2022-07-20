package com.okhospital.dao;

import java.util.List;

import com.okhospital.dto.BoardDTO;

public interface BoardDAO {
	//글 목록 => 메서드명 boardList(), 리턴 List<BoardDTO>
	public List<BoardDTO> boardList() throws Exception;
	
	//글 상세보기 => 리턴 BoardDTO ,매개변수 seq
	public BoardDTO boardRead(int seq) throws Exception;

	//글 등록 => 매개변수 BoardDTO, 
	public void boardWrite(BoardDTO bdto) throws Exception;
	
	//글 수정 => 매개변수 BoardDTO
	public void boardUpdate(BoardDTO bdto) throws Exception;
	
	//글 삭제 => 매개변수 seq
	public void boardDelete(int seq) throws Exception;
}
