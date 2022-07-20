package com.okhospital.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.okhospital.dao.MemberDAO;
import com.okhospital.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDao;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO viewMember(String u_id) throws Exception {
		return memberDao.viewMember(u_id);
	}

	@Override
	public void insertMember(MemberDTO mdto) throws Exception {
		memberDao.insertMember(mdto);
	}

	@Override
	public boolean login(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();		//세션
		boolean loginSuccess = false;
		MemberDTO mdto = new MemberDTO();	//DTO선언
		
		mdto.setU_id(request.getParameter("u_id"));
		mdto.setU_pw(request.getParameter("u_pw"));	//입력한 아이디 비밀번호를 파라미터로 받아서 DTO에 set
		
		MemberDTO login = memberDao.login(mdto);  //login에 담아
		
		loginSuccess = pwdEncoder.matches(mdto.getU_pw(), login.getU_pw());		//DTO의 데이터와 입력한 비밀번호를 암호화 한 값이 같으면
		
		if(login!= null && loginSuccess==true) {		//
			session.setAttribute("member", login);
			session.setAttribute("sid", login.getU_id());		//세션에 저장된 아이디 sid
			loginSuccess = true;
		}
		
		return loginSuccess;
	}

	@Override
	public void updateMember(MemberDTO mdto) throws Exception {
		memberDao.updateMember(mdto);
	}

	
	@Override
	public void deleteMember(String u_id) throws Exception {
		memberDao.deleteMember(u_id);		
	}

	

	@Override
	public int idCheck(String u_id) throws Exception {
		return memberDao.idCheck(u_id);
	} 
	
	
}
