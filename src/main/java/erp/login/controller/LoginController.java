package erp.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import erp.insa.dto.EmpDTO;
import erp.insa.service.EmpService;
@Controller
public class LoginController {
	@Autowired
	EmpService service;
	
	@RequestMapping(value="/erp/login.do", method=RequestMethod.GET)
	public String emploginView(){
		return "erp/login";
	}
	@RequestMapping(value="/erp/login.do", method=RequestMethod.POST)
	public String empinsert(EmpDTO emp,HttpSession session){
		System.out.println("emp"+emp);
		
		EmpDTO loginUser = service.login(emp);
		
		String url = "";
		if(loginUser!=null) {
			session.setAttribute("loginUser", loginUser);
			url = "redirect:/erp/deptlist.do";
		}else {
			url = "erp/login";
		}
		return url;
	}
	
	@RequestMapping(value="/erp/logout.do")
	public String emplogout(HttpServletRequest request) {
		
		HttpSession ses = request.getSession(false);
		if(ses!=null){
			//세션을 제거한다.
			ses.invalidate();
		}
		return "erp/login";
	}
}
