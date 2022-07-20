package com.okhospital.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public MemberDTO viewMember(String u_id) throws Exception {
		return sqlSession.selectOne("member.viewMember", u_id);
	}

	@Override
	public void insertMember(MemberDTO mdto) throws Exception {
		sqlSession.insert("member.insertMember", mdto);
	}

	@Override
	public void updateMember(MemberDTO mdto) throws Exception {
		sqlSession.update("member.updateMember", mdto);
	}

	@Override
	public void deleteMember(String u_id) throws Exception {
		sqlSession.delete("member.deleteMember", u_id);
	}

	@Override
	public MemberDTO login(MemberDTO mdto) throws Exception {
		return sqlSession.selectOne("member.login", mdto);
	}

	@Override
	public int idCheck(String u_id) throws Exception {
		return sqlSession.selectOne("member.idCheck", u_id);
	}
	
	
}
