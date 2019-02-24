package com.spring.em.member.controller;

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
	@RequestMapping(value="/loginCheck.do")
	public ModelAndView loginCheck(String email, String password, Model model, ModelAndView mv) {
		String msg="";
		String loc="";
		String status="";
		
		Member m =service.selectOne(email);
		System.out.println("Controller:::::"+m);
		System.out.println("입력password:::"+password);
	
		if(m == null) {
			msg="존재하지 않는 아이디입니다.";
			status="존재xFail";
			loc="/";
		}
		else {
			if(password.equals(m.getPassword())) {
				msg="로그인 성공!";
				mv.addObject("memberLoggedIn",m);
				status="Success";
				loc="/emBook.do";
			}
			else {
				msg="비밀번호가 일치하지 않습니다.";
				status="비번XFail";
				loc="/";
			}
		}
		System.out.println("status=============+" +status);
		
		mv.addObject("msg",msg);
		mv.addObject("loc",loc);
		mv.addObject("status",status);
		mv.setViewName("common/msg");
		return mv;
	}
	
	@RequestMapping(value="/emBook.do")
	public String emBook() 
	{
		return "emBook/main";
	}
	
	
}
