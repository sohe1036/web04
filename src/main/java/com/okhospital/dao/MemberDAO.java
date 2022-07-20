package com.okhospital.dao;

import java.util.List;

import com.okhospital.dto.MemberDTO;

public interface MemberDAO {
	
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
	public MemberDTO login(MemberDTO mdto) throws Exception;
	
	//아이디 체크
	public int idCheck(String u_id) throws Exception;
	
}
