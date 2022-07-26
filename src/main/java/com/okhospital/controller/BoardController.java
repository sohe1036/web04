package com.okhospital.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.okhospital.dto.BoardDTO;
import com.okhospital.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("list.do")
	public String boardList(Model model) throws Exception {
		List<BoardDTO> boardList = boardService.boardList();
		model.addAttribute("boardList", boardList);
		return "board/boardList";
	}

	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String boardRead(@RequestParam int seq, Model model) throws Exception {
		BoardDTO board = boardService.boardRead(seq);
		model.addAttribute("board", board);
		return "board/boardRead";
	}
	@RequestMapping(value="edit.do", method = RequestMethod.GET)
	public String boardEdit(@RequestParam int seq, Model model) throws Exception {
		BoardDTO board = boardService.boardRead(seq);
		model.addAttribute("board", board);
		return "board/boardEdit";
	}

	@RequestMapping(value="write_form.do") //board/write_form -> board/boardWriteForm.jsp
	public String boardWriteForm(Model model) throws Exception {
		return "board/boardWriteForm";
	}
	
	@RequestMapping(value="insert.do", method = RequestMethod.POST)
	public String boardWrite(BoardDTO bdto, Model model) throws Exception {
		boardService.boardWrite(bdto);
		return "redirect:list.do";
	}
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String boardUpdate(BoardDTO bdto, Model model) throws Exception {
		boardService.boardUpdate(bdto);
		return "redirect:list.do";
	}
	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String boardDelete(@RequestParam int seq, Model model) throws Exception {
		boardService.boardDelete(seq);
		return "redirect:list.do";
	}
	
}
