package com.hk.member.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hk.member.HomeController;

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
}
