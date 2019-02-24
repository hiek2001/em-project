package com.spring.em.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.em.member.model.service.MemberService;
import com.spring.em.member.model.vo.Member;

@SessionAttributes(value= {"memberLoggedIn"})
@Controller
public class MemberController {
	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService service;
	
	//로그인 창에서 start를 누르면
	@RequestMapping(value="/loginCheck.do", method=RequestMethod.POST)
	public String loginCheck(String email, String password, HttpSession session) {
		String returnURL="";
		if(session.getAttribute("login")!=null) {
			session.removeAttribute("login");
		}
		
		Member m =service.selectOne(email);
		System.out.println("Controller:::::"+m);
		
		if(m != null && m.getPassword()==password) {
			session.setAttribute("login", m);
			returnURL="emBook/main";
		}
		else {
			returnURL="login";
		}
		
		return returnURL;
	}
	
}
