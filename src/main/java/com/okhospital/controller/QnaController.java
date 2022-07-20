package com.okhospital.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.okhospital.dto.BoardDTO;
import com.okhospital.dto.QnaDTO;
import com.okhospital.dto.SearchDTO;
import com.okhospital.service.QnaService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	
	@Autowired
	QnaService qnaService;
	
	
	//메뉴에서 목록 눌렀을 때 a태그->get방식
	@RequestMapping(value="list.do",  method = RequestMethod.GET)
	public String qnaBasicList(Model model) throws Exception {
		List<QnaDTO> qnaList = qnaService.qnaList();
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
		}
	
	//검색 폼에서 검색방법으로 입력받아서 나타나는 목록 ->post방식
	@RequestMapping(value="slist.do",  method = RequestMethod.POST)
	public String qnaList(SearchDTO sdto, Model model) throws Exception {
		List<QnaDTO> qnaList = qnaService.qnaList(sdto);
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
	}

	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String qnaRead(@RequestParam int qno, Model model) throws Exception {
		QnaDTO qna = qnaService.qnaRead(qno);
		model.addAttribute("qna", qna);
		return "qna/qnaRead";
	}
	
	@RequestMapping(value="replyRead.do", method = RequestMethod.GET)
	public String replyRead(@RequestParam int qno, Model model) throws Exception {
		QnaDTO qna = qnaService.qnaRead(qno);
		model.addAttribute("qna", qna);
		return "qna/replyRead";
	}

	@RequestMapping(value="writeForm.do") 
	public String qnaWriteForm(Model model) throws Exception {
		return "qna/qnaWriteForm";
	}
	
	@RequestMapping(value="replyForm.do",  method = RequestMethod.GET) 
	public String replyWriteForm(@RequestParam int qno, Model model) throws Exception {
		QnaDTO qna = qnaService.qnaRead(qno);
		model.addAttribute("qna", qna);
		return "qna/replyWriteForm";
	}
	
	@RequestMapping(value="insert.do", method = RequestMethod.POST)
	public String qnaWrite(QnaDTO qdto, Model model) throws Exception {
		qnaService.qnaWrite(qdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="replyinsert.do", method = RequestMethod.POST)
	public String replyWrite(QnaDTO qdto, Model model) throws Exception {
		qnaService.replyWrite(qdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String qnaUpdate(QnaDTO qdto, Model model) throws Exception {
		qnaService.qnaUpdate(qdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="replyUpdate.do", method = RequestMethod.POST)
	public String replyUpdate(QnaDTO qdto, Model model) throws Exception {
		qnaService.qnaUpdate(qdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String qnaDelete(@RequestParam int qno, Model model) throws Exception {
		qnaService.qnaDelete(qno);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="replyDelete.do", method = RequestMethod.GET)
	public String replyDelete(@RequestParam int qno, Model model) throws Exception {
		qnaService.replyDelete(qno);
		return "redirect:list.do";
	}
	
}
