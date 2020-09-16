package com.hk.member.loginController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.hk.member.service.MemberService;
import com.hk.member.vo.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("auth/login")
	public String authLogin() {
		
		return "auth/loginForm";
		
	}
	
	@PostMapping("auth/login")
	public String authLoginPost(HttpServletRequest request, HttpSession session, MemberVO memberVO) {
		MemberVO loginMember = memberService.memberLogin(memberVO);
		if (loginMember != null) {
			session.setAttribute("loginMember", loginMember);
			return "auth/loginFormDone";
		} else {
			return "auth/loginFail";
		}
		
		
	}

}
