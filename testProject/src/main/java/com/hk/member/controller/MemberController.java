package com.hk.member.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.hk.member.service.MemberService;
import com.hk.member.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@GetMapping("/member/list")
	public String memberList(Locale locale, Model model) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
	
		model.addAttribute("members", memberService.memberList());
		
		return "memberList";
	}
	
	@GetMapping("/member/register")
	public String memberRegister(MemberVO member) {
		return "memberRegister";
	}
	
	@PostMapping("/member/register")
	public String memberRegisterDone(Model model, MemberVO memberVO) {
		int retVal = memberService.memberRegister(memberVO);
		logger.info("insert 후에 성공인지 실패인지 알려줌.. ["+retVal +"]");
		if (retVal < 1) { 
			
			model.addAttribute("error", "에러가 발생했습니다. 관리자에게 문의하세요");
			return "memberRegisterError";
		} else { 
			model.addAttribute("mname", memberVO.getMname());
			return "memberRegisterDone";
		}
				
	}
}
