package com.okhospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu/*")
public class MenuController {
	
	//intro
	@RequestMapping("intro.do")
	public String intro(Model model) throws Exception {
		return "menu/intro";
	}

}
