package main.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JsonNode;

@Controller
public class MemberController {

	@Autowired
	MemberService service;


	@RequestMapping(value = "/member/kakao", produces = "application/json", 
			method = { RequestMethod.GET,RequestMethod.POST })
	public String kakaologin(@RequestParam("code") String code, HttpSession Session) {
		JsonNode token = KakaoLogin.getAccessToken(code);
		JsonNode profile = KakaoLogin.getKakaoUserInfo(token.path("access_token").toString());
		String id = profile.path("id").asText();
		String nickname = profile.path("properties").path("nickname").asText();
		String email = profile.path("kaccount_email").asText();
		System.out.println(email+" 이메일");
		String urlPath = null;
		MemberDTO member = new MemberDTO();
		boolean loginUser = service.idCheck(id);
		if (loginUser == false) {
			member.setId(id);
			member.setName(nickname);
			member.setEmail(email);
			service.kakao(member);
			Session.removeAttribute("loginUser");
			Session.setAttribute("loginUser", service.idCheck(id));
			urlPath = "redirect:/main/myservice.do";
		} else {
			Session.removeAttribute("loginUser");
			Session.setAttribute("loginUser", service.idCheck(id));
			urlPath = "redirect:/main/signin.do";
		}
		return urlPath;
	}
	
	// 회원가입
	@RequestMapping(value = "/member/signup.do", method = RequestMethod.POST)
	public String signup(MemberDTO member, HttpSession session) {
		int result = service.signup(member);
		//System.out.println(result + "가입 성공");
		return "redirect:/main/signin.do";
	}

	// 로그인
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String login(MemberDTO user, HttpSession session) {
		String viewName = "";
		MemberDTO loginUser = service.login(user.getId(), user.getPwd());

		if (loginUser != null) {
			if (loginUser.getState().equals("0")) {
				viewName = "redirect:/main/myservice.do";
				session.setAttribute("loginUser", loginUser); 
			} else if (loginUser.getState().equals("1")) {	// 회원탈퇴의 경우
				viewName = "redirect:/main/signin.do";
			}
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
		}
		return "redirect:/main/signin.do";
	}

	// 아이디 중복 체크
	@RequestMapping(value = "/member/idcheck.do", method = RequestMethod.GET, produces = "application/text;charset=utf-8")
	public @ResponseBody String idCheck(String id) {
		String result = "";
		boolean check = service.idCheck(id);
		if (check) {
			result = "이미 존재하는 아이디";
		}
		return result;
	}

	// 회원 정보 수정
	@RequestMapping(value = "/member/update.do", method = RequestMethod.POST)
	public String update(MemberDTO user) {
		int result = service.update(user);
		System.out.println(result + "수정 성공");
		return "redirect:/main/myservice.do";
	}

	// 회원 탈퇴 - 상태변경
	@RequestMapping(value = "/member/withdraw.do", method = RequestMethod.POST)
	public String withdraw(MemberDTO user) {
		int result = service.withdraw(user);
		System.out.println(result + "탈퇴 성공");
		return "redirect:/main/myservice.do";
	}	

}