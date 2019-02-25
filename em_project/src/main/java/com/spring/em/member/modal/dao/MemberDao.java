package com.spring.em.member.modal.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.spring.em.member.model.vo.Member;

public interface MemberDao {

	Member selectOne(SqlSessionTemplate sqlSession, String email);
	int memberEnrollEnd(SqlSessionTemplate sqlSession, Member member);
}
