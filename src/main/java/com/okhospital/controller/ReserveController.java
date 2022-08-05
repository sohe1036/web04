package com.okhospital.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	//예약확인 페이지	
	@RequestMapping(value="reserveCheck.do")
	public String reserveCheck(Model model) throws Exception{
		return "reserve/reserveCheck";
	}
	
	//예약확인
	@RequestMapping(value="reserveRnoCheck.do",method=RequestMethod.POST)
	public String reserveRnoCheck (@RequestParam ("rno") int rno , Model model) throws Exception{
		ReserveDTO reserve = reserveService.reserveRead(rno);
		model.addAttribute("reserve", reserve);
		return "reserve/reserveCheck";
	}
	
	
	//예약하기
	@RequestMapping(value="reserveInsert.do" , method=RequestMethod.POST)
	public String reserveInsert (ReserveDTO redto , Model model) throws Exception{
		reserveService.reserveInsert(redto);
		return "redirect:reserveList.do";
	}
	
	//예약리스트
	@RequestMapping(value="reserveList.do")
	public String reserveList (Model model) throws Exception{
		List<ReserveDTO> reserveList = reserveService.reserveList();
		model.addAttribute("reserveList", reserveList);
		return "reserve/reserveList";
	}
	/*
	//예약상세보기
	@RequestMapping(value="getReserve.do",method=RequestMethod.GET)
	public String getReserve (@RequestParam ("rno") int rno , Model model) throws Exception{
		ReserveDTO reserve = reserveService.reserveRead(rno);
		model.addAttribute("reserve", reserve);
		return "reserve/reserveRead";
	}
	*/
	//예약 상세보기 -이름,생년월일
	@RequestMapping(value="reserveDetail.do",method=RequestMethod.POST )
	public String reserveDetail (ReserveDTO redto, Model model) throws Exception{
		List<ReserveDTO> reserve = reserveService.reserveDetail(redto);
		model.addAttribute("reserve", reserve);
		return "reserve/reserveRead";
	}

	//예약 상세보기 -예약번호로 조회(post)
	@RequestMapping(value="reserveRead.do",method=RequestMethod.POST)
	public String reserveRead (@RequestParam ("rno") int rno , Model model) throws Exception{
		ReserveDTO reserve = reserveService.reserveRead(rno);
		model.addAttribute("reserve", reserve);
		return "reserve/reserveRead2";
	}
	
	//예약 수정 폼
	@RequestMapping(value="reserveUpdateForm.do",method=RequestMethod.GET)
	public String reserveUpdateForm (@RequestParam ("rno") int rno ,Model model) throws Exception{
		ReserveDTO reserve = reserveService.reserveRead(rno);
		model.addAttribute("reserve", reserve);
		return "reserve/reserveUpdateForm";
	}
	
	//예약 수정하기
	@RequestMapping(value="reserveUpdate.do", method=RequestMethod.POST)
	public String reserveUpdate(ReserveDTO redto, Model model) throws Exception{
		reserveService.reserveUpdate(redto);
		return "reserve/reserveCheck";
	}
	
	//예약 확정하기
	@RequestMapping(value="reserveConfirm.do", method=RequestMethod.POST)
	public String reserveConfirm(ReserveDTO redto, Model model) throws Exception{
		reserveService.reserveConfirm(redto);
		return "redirect:reserveList.do";
	}
	
	//예약 삭제
	@RequestMapping(value="reserveDelete.do" ,method=RequestMethod.GET)
	public String reserveDelete(@RequestParam ("rno") int rno , Model model) throws Exception{
		reserveService.reserveDelete(rno);
		return "reserve/reserveCheck";
	}
}
