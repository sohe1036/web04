package com.okhospital.myapp;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.okhospital.dto.MemberDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	//value에 호출할 거 method에 GET 또는 POST -> 메서드 지정되어있는 @PostMapping나 @GetMapping도 쓸 수 있음
	@RequestMapping(value="test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("콘솔창에 테스트페이지!");
		model.addAttribute("msg", "테스트입니다.");
		return "/test";
	}
	//Attribute로 데이터 전달
	@RequestMapping(value="test/doA", method = RequestMethod.GET)
	public String doA(Locale locale, Model model) {
		logger.info("콘솔창에 doA 테스트페이지!");
		model.addAttribute("msg", "doA 테스트입니다.");
		return "/test/doA";
	}
	//Map(키,값)으로 데이터 전달
	@RequestMapping(value="test/doB", method = RequestMethod.GET)
	public ModelAndView doB(Locale locale, Model model) {
		Map<String,Integer> map = new HashMap<>();
		map.put("test",1004);
		map.put("key",100);
		logger.info("콘솔창에 MenberDTO의 Map doB테스트페이지!");
		model.addAttribute("msg", "Map doB테스트입니다.");
		return new ModelAndView("/test/doB","map",map);
	}
	//List로 데이터 전달
	@RequestMapping(value="test/doC", method = RequestMethod.GET)
	public ModelAndView doC(Locale locale, Model model) {
		ArrayList<MemberDTO> list = new ArrayList<>();
		MemberDTO dto1 = new MemberDTO();
		dto1.setU_id("abc123");
		dto1.setU_pw("1234");
		list.add(dto1);
		MemberDTO dto2 = new MemberDTO();
		dto2.setU_id("def123");
		dto2.setU_pw("4321");
		list.add(dto2);
		logger.info("콘솔창에 MenberDTO의 list doC테스트페이지!");
		model.addAttribute("msg", "list doC테스트입니다.");
		return new ModelAndView("/test/doC","list",list);
	}
	//redirect는 해당 url로 포워딩 후 이동됨
	@RequestMapping(value="test/doD", method = RequestMethod.GET)
	public String doD(Locale locale, Model model) {
		MemberDTO member = new MemberDTO();
		member.setU_id("sh123");
		member.setU_pw("7890");
		return "redirect:/test/doD";
	}
}
