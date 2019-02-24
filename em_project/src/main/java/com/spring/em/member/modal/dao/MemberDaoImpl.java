package com.spring.em.member.modal.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.spring.em.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Override
	public Member selectOne(SqlSessionTemplate sqlSession, String email) {
		System.out.println("Dao:::"+email);
		return sqlSession.selectOne("member.selectOne",email);
	}

}
