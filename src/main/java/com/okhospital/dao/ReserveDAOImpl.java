package com.okhospital.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.ReserveDTO;

@Repository
public class ReserveDAOImpl implements ReserveDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ReserveDTO> reserveList() throws Exception {
		return sqlSession.selectList("reserve.reserveList");
	}

	@Override
	public ReserveDTO reserveRead(int rno) throws Exception {
		return sqlSession.selectOne("reserve.reserveRead", rno);
	}

	@Override
	public List<ReserveDTO> reserveDetail(ReserveDTO redto) throws Exception {
		return sqlSession.selectList("reserve.reserveDetail", redto);
	}

	@Override
	public void reserveInsert(ReserveDTO redto) throws Exception {
		sqlSession.insert("reserve.reserveInsert", redto);
	}


	@Override
	public void reserveUpdate(ReserveDTO redto) throws Exception {
		sqlSession.update("reserve.reserveUpdate", redto);
	}

	@Override
	public void reserveConfirm(ReserveDTO redto) throws Exception {
		sqlSession.update("reserve.reserveConfirm", redto);
	}

	@Override
	public void reserveDelete(int rno) throws Exception {
		sqlSession.delete("reserve.reserveDelete", rno);
	}
	

}
