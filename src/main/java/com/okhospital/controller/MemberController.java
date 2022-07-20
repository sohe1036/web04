package com.okhospital.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.okhospital.dto.MemberDTO;
import com.okhospital.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	//세션
	@Autowired
	HttpSession session;
	
	//암호화
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	//약관동의페이지
	@RequestMapping("agree.do")
	public String agree() {
		return "member/agree";
	}
	
	//회원목록
	@RequestMapping("memlist.do")
	public String memberList(Model model) throws Exception {
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/memberList";
	}
	//마이페이지-관리자용 회원리스트
	@RequestMapping(value="mypage.do", method = RequestMethod.GET)
	public String myPage(@RequestParam String u_id, Model model) throws Exception {
		MemberDTO member = memberService.viewMember(u_id);
		model.addAttribute("member", member);
		return "member/myPage";
	}
	
	//회원정보보기- 정보보기
	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String memberRead(@RequestParam String u_id, Model model) throws Exception {
		MemberDTO member = memberService.viewMember(u_id);
		model.addAttribute("member", member);
		return "member/memberRead";
	}
	//회원정보보기- 정보보기 폼
	@RequestMapping(value="edit.do", method = RequestMethod.GET)
	public String memberEdit(@RequestParam String u_id, Model model) throws Exception {
		MemberDTO member = memberService.viewMember(u_id);
		model.addAttribute("member", member);
		return "member/memberEdit";
	}

	//회원가입폼
	@RequestMapping("joinForm.do")
	public String memberWriterForm(Model model) throws Exception {
		return "member/joinForm";
	}
	
	//로그인폼
	@RequestMapping("loginForm.do")  
	public String memberLoginForm(Model model) throws Exception {
		return "member/loginForm";
	}	
	
	//회원가입 처리
	@RequestMapping(value="join.do", method = RequestMethod.POST)
	public String memberWrite(MemberDTO mdto, Model model) throws Exception {
		String u_pw = mdto.getU_pw();	//DTO에서 u_pw가져와
		String epw = pwdEncoder.encode(u_pw);	//가져온 u_pw를 인코팅해서 암호화
		mdto.setU_pw(epw);		//인코딩한 epw를 다시 DTO의 u_pw에 세팅		
		memberService.insertMember(mdto);
		return "redirect:loginForm.do";
	}
		
	//회원정보수정
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String memberUpdate(MemberDTO mdto, Model model) throws Exception {
		String u_pw = mdto.getU_pw();	//DTO에서 u_pw가져와
		String epw = pwdEncoder.encode(u_pw);	//가져온 u_pw를 인코팅해서 암호화
		mdto.setU_pw(epw);		//인코딩한 epw를 다시 DTO의 u_pw에 세팅		
		memberService.updateMember(mdto);
		return "redirect:mypage.do?u_id="+mdto.getU_id();
	}	
	
	//회원탈퇴
	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String memberDelete(@RequestParam String u_id, Model model,HttpSession session) throws Exception {
		memberService.deleteMember(u_id);
		session.invalidate();
		return "redirect:/";
	}
	
	//로그인 처리-서비스에서 세션처리
	@RequestMapping(value="login.do", method = RequestMethod.POST)
	public String memberLogin(MemberDTO mdto, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		boolean loginSuccess = memberService.login(req);
		if(loginSuccess) {
			return "redirect:/";
		}else {
			return "redirect:loginForm.do";
		}
		
	}
	
	//id체크
	@RequestMapping(value="idCheck.do", method = RequestMethod.GET)
	public String idCheck(@RequestParam String u_id, Model model, RedirectAttributes rttr) throws Exception {
		int cnt = memberService.idCheck(u_id);		//받은 아이디 값과 일치하는지 확인
		if(cnt==0) {		//일치하는 아이디가 없을 때
			model.addAttribute("msg", "가입 가능한 아이디");
			rttr.addFlashAttribute("message", "가입 가능한 아이디");
			model.addAttribute("ck", "ok");
			model.addAttribute("uid", u_id);
		} else {			//일치하는 아이디가 있을 때
			model.addAttribute("msg", "가입 불가능한 아이디");
			rttr.addFlashAttribute("message", "가입 불가능한 아이디");
			model.addAttribute("ck", null);
		}
		return "member/joinForm";
	}
	
	//로그아웃
	@RequestMapping("logout.do")
	public String memberLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
}
