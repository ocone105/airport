package main.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MemberController {

	@Autowired
	MemberService service;

	// 회원가입
	@RequestMapping(value = "/member/signup.do", method = RequestMethod.POST)
	public String signup(MemberDTO member, HttpSession session) {
		int result = service.signup(member);
		System.out.println(result + "가입 성공");
		return "redirect:/main/signin.do";
	}

	// 로그인
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String login(MemberDTO user, HttpSession session) {
		String viewName = "";
		MemberDTO loginUser = service.login(user.getId(), user.getPwd());

		if (loginUser != null) {
			viewName = "redirect:/main/myservice.do";
			session.setAttribute("loginUser", loginUser); // 세션 생성
			// System.out.println("로그인 성공");
		} else {
			viewName = "redirect:/main/signin.do";
		}
		return viewName;
	}

	// 로그아웃
	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
			// System.out.println("로그아웃 성공");
		}
		return "redirect:/main/signin.do";
	}
	
	// 아이디 중복 체크
	@RequestMapping(value = "/member/idcheck.do", 
			method=RequestMethod.GET, produces="application/text;charset=utf-8")
	public @ResponseBody String idCheck(String id) {
		String result = "";
		boolean check = service.idCheck(id);
		if (check) {
			result = "이미 존재하는 아이디";
		} 
		return result;
	}
}