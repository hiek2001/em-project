package com.spring.em.member.controller;

import javax.servlet.http.HttpServletRequest;

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
	
	//메인 화면으로 페이지 이동
	@RequestMapping(value="/emBook.do")
	public String emBook() 
	{
		return "emBook/main";
	}
	
	//회원가입 페이지로 이동
	@RequestMapping(value="/memberEnroll.do")
	public String memberEnroll() 
	{
		return "member/enroll";
	}
	
	//회원가입 등록
	@RequestMapping(value="/memberEnrollEnd.do")
	public ModelAndView memberEnrollEnd(HttpServletRequest request) throws Exception
	{
		//회원가입
		ModelAndView mv=new ModelAndView();
		Member member=new Member();
		member.setEmail(request.getParameter("email"));
		member.setPassword(request.getParameter("password"));
		member.setName(request.getParameter("name"));
		member.setGender(request.getParameter("gender"));
		member.setAge(Integer.parseInt(request.getParameter("age")));
		member.setHeight(Integer.parseInt(request.getParameter("height")));
		member.setWeight(Integer.parseInt(request.getParameter("weight")));		
		
		System.out.println("입력받은 member:::"+member);
		int result=service.memberEnrollEnd(member);
		
		//기초대사량 자동 계산
		
		String msg="";
		String loc="";
		if(result>0) {
			msg="회원가입이 완료되었습니다.";
			loc="/login.do";
		}
		else {
			msg="회원가입이 실패했습니다.";
			loc="/";
		}
		mv.addObject("msg",msg);
		mv.addObject("loc",loc);
		mv.setViewName("common/msg");
		return mv;
	}
	
	//회원가입 후 로그인 화면으로 이동
	@RequestMapping(value="/login.do")
	public String login() {
		return "member/login";
	}
}
