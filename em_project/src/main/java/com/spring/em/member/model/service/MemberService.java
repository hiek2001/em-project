package com.spring.em.member.model.service;

import com.spring.em.member.model.vo.Member;

public interface MemberService {
	Member selectOne(String email);
	int memberEnrollEnd(Member member);
}
