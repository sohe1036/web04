package com.okhospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.okhospital.dao.ReserveDAO;
import com.okhospital.dto.ReserveDTO;

@Service
public class ReserveServiceImpl implements ReserveService {

	@Autowired
	ReserveDAO reserveDao;

	@Override
	public List<ReserveDTO> reserveList() throws Exception {
		return reserveDao.reserveList();
	}

	@Override
	public ReserveDTO reserveRead(int rno) throws Exception {
		return reserveDao.reserveRead(rno);
	}

	@Override
	public void reserveInsert(ReserveDTO redto) throws Exception {
		reserveDao.reserveInsert(redto);
	}

	@Override
	public ReserveDTO reserveCheck() throws Exception {
		return reserveDao.reserveCheck();
	}

	@Override
	public void reserveUpdate(ReserveDTO redto) throws Exception {
		reserveDao.reserveUpdate(redto);
	}

	@Override
	public void reserveConfirm(ReserveDTO redto) throws Exception {
		reserveDao.reserveConfirm(redto);
	}

	@Override
	public void reserveDelete(int rno) throws Exception {
		reserveDao.reserveDelete(rno);
	}
	
	
}
