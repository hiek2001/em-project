package com.spring.em.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.em.member.modal.dao.MemberDao;
import com.spring.em.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member selectOne(String email) {
		System.out.println("Service:::"+email);
		return dao.selectOne(sqlSession,email);
	}

}
