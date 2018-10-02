package main.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;


@Controller
public class MemberController {

	private ShaPasswordEncoder passencoder = new ShaPasswordEncoder(256);

	@Autowired
	MemberService service;

	// 카카오 로그인
	@RequestMapping(value = "/member/kakao", produces = "application/json", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String kakaologin(@RequestParam("code") String code, HttpSession Session) {
		JsonNode token = KakaoLogin.getAccessToken(code);
		JsonNode profile = KakaoLogin.getKakaoUserInfo(token.path("access_token").toString());
		String id = profile.path("id").asText();
		String nickname = profile.path("properties").path("nickname").asText();
		String email = profile.path("kaccount_email").asText();
		String urlPath = null;
		MemberDTO member = new MemberDTO();
		boolean loginUser = service.idCheck(id);
		if (loginUser == false) {
			member.setId(id);
			member.setName(nickname);
			member.setEmail(email);
			service.kakao(member);
			Session.removeAttribute("loginUser");
			Session.setAttribute("loginUser", id);
			urlPath = "redirect:/main/index.do";
		} else {
			Session.removeAttribute("loginUser");
			Session.setAttribute("loginUser", id);
			urlPath = "redirect:/main/index.do";
		}
		return urlPath;
	}

	// 회원가입
	@RequestMapping(value = "/member/signup.do", method = RequestMethod.POST)
	public String signup(MemberDTO member, HttpSession session) {
		if (member.getEmail_alarm() == null) {
			member.setEmail_alarm("n");
		}
		if (member.getSms_alarm() == null) {
			member.setSms_alarm("n");
		}

		String securitypass = passencoder.encodePassword(member.getPwd(), null);
		member.setPwd(securitypass); // 암호화된 패스워드를 다시 패스워드로 세팅

		int result = service.signup(member);
		return "redirect:/main/signin.do";
	}

	// 로그인
	/*@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String login(MemberDTO user, HttpSession session) {
		String viewName = "";
		MemberDTO loginUser = service.login(user.getId(), user.getPwd());

		if (loginUser != null) {
			if (loginUser.getState().equals("1")) {
				viewName = "redirect:/main/index.do";
				session.setAttribute("loginUser", loginUser);
				System.out.println("세션: "+session);
			} else if (loginUser.getState().equals("0")) { // 회원탈퇴의 경우
				viewName = "redirect:/main/signin.do";
			}
		} else {
			viewName = "redirect:/main/signin.do";
		}
		return viewName;
	}*/

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
	@RequestMapping(value="/main/myservice/update.do", method=RequestMethod.GET)
	public ModelAndView update(String id){
		ModelAndView mav = new ModelAndView();
		MemberDTO member = service.read(id);
		mav.addObject("member", member);
		mav.setViewName("myservice_modify");
		return mav;
	}
	
	@RequestMapping(value="/main/myservice/update.do", method=RequestMethod.POST)
	public String update(MemberDTO member){
		if (member.getEmail_alarm() == null) {
			member.setEmail_alarm("n");
		}
		if (member.getSms_alarm() == null) {
			member.setSms_alarm("n");
		}
		//System.out.println("수정한 정보:"+member);
		int result = service.update(member);
		return "redirect:/main/myservice";
	}

	// 회원 탈퇴 - 상태변경
	@RequestMapping(value="/main/myservice/withdraw.do", method=RequestMethod.GET)
	public ModelAndView withdrawpage(String id){
		ModelAndView mav = new ModelAndView();
		MemberDTO member = service.read(id);
		mav.addObject("member", member);
		mav.setViewName("myservice_withdraw");
		return mav;
	}
	
/*	@RequestMapping(value="/main/myservice/withdraw.do", method=RequestMethod.POST)
	public ModelAndView withdraw(MemberDTO member){
		ModelAndView mav = new ModelAndView();
		MemberDTO origin = service.read(member.getId());
		
		if(passencoder.encodePassword(member.getPwd(), null).equals(origin.getPwd())) {
			//int result = service.withdraw(member.getId());
			System.out.println("탈퇴성공");
		}else {
			System.out.println("탈퇴실패");
		}
		
		mav.addObject("member", origin);
		mav.addObject("msg", "비밀번호를 다시 확인해주세요.");
		mav.setViewName("myservice_withdraw");
		return mav;
	}*/
	
	@RequestMapping(value = "/main/myservice/withdraw.do", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody int withdraw(String id, String pwd, HttpServletRequest request) {
		MemberDTO origin = service.read(id);
		String checkPwd = passencoder.encodePassword(pwd, null);
		if(checkPwd.equals(origin.getPwd())) {
			int result = service.withdraw(id);
			HttpSession session = request.getSession(false);
			if (session != null) {
				session.invalidate();
			}
			return result;
		}else {
			int result = 0;
			return result;
		}
	}
	
/*	@RequestMapping(value = "/main/myservice/withdraw.do", method = RequestMethod.POST)
	public String withdraw(MemberDTO member) {
		System.out.println("회원탈퇴:"+member);
		MemberDTO origin = service.read(member.getId());
		
		if(passencoder.encodePassword(member.getPwd(), null).equals(origin.getPwd())) {
			//int result = service.withdraw(member.getId());
			System.out.println("탈퇴성공");
		}else {
			System.out.println("탈퇴실패");
		}
		
		return "redirect:/main/index.do";
	}*/

	// 회원 정보 읽기
	@RequestMapping("/main/myservice")
	public ModelAndView myservice(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		//System.out.println("세션 정보:"+session.getAttribute("loginUser"));
		String id = (String) session.getAttribute("loginUser");
		MemberDTO member =service.read(id);
		mav.addObject("member", member);
		mav.setViewName("myservice");
		return mav;
	}
	
	// 회원목록
	@RequestMapping(value = "/main/admin")
	public ModelAndView memberlist() {
		ModelAndView mav = new ModelAndView();
		List<MemberDTO> memberlist = service.memberList();
		for (int i = 0; i < memberlist.size();i++) {
			if(memberlist.get(i).getState().equals("0")){
				memberlist.get(i).setState("탈퇴");
			}else if(memberlist.get(i).getState().equals("1")){
				memberlist.get(i).setState("일반");
			}else if(memberlist.get(i).getState().equals("2")){
				memberlist.get(i).setState("카카오");
			}
		}
		mav.addObject("memberlist", memberlist);
		mav.setViewName("adminMain");
		return mav;
	}
	
	// 회원검색
	@RequestMapping(value="/main/admin/membersearh.do")
	public ModelAndView membersearch(String search){
		ModelAndView mav = new ModelAndView();
		List<MemberDTO> memberlist = service.memberSearch(search);
		for (int i = 0; i < memberlist.size();i++) {
			if(memberlist.get(i).getState().equals("0")){
				memberlist.get(i).setState("탈퇴");
			}else if(memberlist.get(i).getState().equals("1")){
				memberlist.get(i).setState("일반");
			}else if(memberlist.get(i).getState().equals("2")){
				memberlist.get(i).setState("카카오");
			}
		}
		mav.addObject("memberlist", memberlist);
		mav.setViewName("adminMain");
		return mav;
	} 

}