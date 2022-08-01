package com.okhospital.service;

import java.util.List;

import com.okhospital.dto.ReserveDTO;

public interface ReserveService {

		//예약 목록
		public List<ReserveDTO> reserveList() throws Exception; 

		//예약상세
		public ReserveDTO reserveRead(int rno) throws Exception;
		
		//예약하기
		public void reserveInsert(ReserveDTO redto) throws Exception;
		
		//예약중복확인
		public ReserveDTO reserveCheck() throws Exception;
		
		//예약수정
		public void reserveUpdate(ReserveDTO redto) throws Exception;
		
		//예약확정
		public void reserveConfirm(ReserveDTO redto) throws Exception;
		
		//예약 취소
		public void reserveDelete(int rno) throws Exception;
	}
