package com.okhospital.service;

import java.util.List;

import com.okhospital.dto.DatabankDTO;

public interface DatabankService {
	//게시판 리스트
	public List<DatabankDTO> databankList() throws Exception;
	//게시판 상세보기
	public DatabankDTO databankRead(int datano) throws Exception;
	//게시판 작성
	public void databankWrite(DatabankDTO ddto) throws Exception;
	//게지판 수정
	public void databankUpdate(DatabankDTO ddto) throws Exception;
	//게시판 삭제
	public void databankDelete(int datano) throws Exception;
}
