package com.okhospital.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.okhospital.dto.MemberDTO;

public interface MemberService {

	//회원목록
		public List<MemberDTO> memberList() throws Exception;
		
		//회원상세정보
		public MemberDTO viewMember(String u_id) throws Exception;
		
		//회원가입
		public void insertMember(MemberDTO mdto) throws Exception;
		
		//회원정보수정
		public void updateMember(MemberDTO mdto) throws Exception;
		
		//회원탈퇴
		public void deleteMember(String u_id) throws Exception;
		
		//로그인 
		public boolean login(HttpServletRequest request) throws Exception;
		
		//아이디 체크
		public int idCheck(String u_id) throws Exception;
		
	}
