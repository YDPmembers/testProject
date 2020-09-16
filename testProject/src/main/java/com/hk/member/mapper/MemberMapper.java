package com.hk.member.mapper;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.hk.member.vo.MemberVO;


@Repository
public interface MemberMapper {
	
	public List<MemberVO> memberList();

}
