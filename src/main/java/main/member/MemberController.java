package main.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@RequestMapping(value = "/member/signup.do", method = RequestMethod.POST)
	public String signup(MemberDTO member, HttpSession session) {
		int result = service.signup(member);
		System.out.println("Ddddd");
		System.out.println(result + "가입 성공");
		return "redirect:/main/signin.do";
	}
}
