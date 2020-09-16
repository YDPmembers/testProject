package com.hk.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.member.mapper.MemberMapper;
import com.hk.member.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	
	public List<MemberVO> memberList() {
		
		return memberMapper.memberList();
	}
	
	public int memberRegister(MemberVO memberVO) {
		
		int retVal = memberMapper.memberRegister(memberVO);
		System.out.println("확인 + retVal" + retVal);
		
		return retVal;
	}
	
	

}
