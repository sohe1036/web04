package com.okhospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.okhospital.dto.ReserveDTO;
import com.okhospital.service.ReserveService;

@Controller
@RequestMapping("/reserve/*")
public class ReserveController {
	@Autowired
	ReserveService reserveService;
	
	//예약 폼
	@RequestMapping(value="reserveForm.do")
	public String reserveForm(Model model) throws Exception{
		return "reserve/reserveForm";
	}
	
	//예약하기
	@RequestMapping(value="reserveInsert.do" , method=RequestMethod.POST)
	public String reserveInsert (ReserveDTO redto , Model model) throws Exception{
		reserveService.reserveInsert(redto);
		return "reserve/reserveList";
	}
	
	//예약리스트
	@RequestMapping(value="reserveList.do")
	public String reserveList (Model model) throws Exception{
		List<ReserveDTO> reserveList = reserveService.reserveList();
		model.addAttribute("reserveList", reserveList);
		return "reserve/reserveList";
	}

	//예약번호로 조회(post)
	@RequestMapping(value="reserveRead.do",method=RequestMethod.POST)
	public String reserveRead (@RequestParam ("rno") int rno , Model model) throws Exception{
		
		ReserveDTO reserve = reserveService.reserveRead(rno);
		model.addAttribute("reserve", reserve);
		return "reserve/reserveRead";
	}
}
