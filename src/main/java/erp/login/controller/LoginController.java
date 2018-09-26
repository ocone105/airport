package erp.login.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import erp.insa.dto.EmpDTO;
import erp.insa.service.EmpService;
import erp.security.dto.SecurityDTO;
import erp.security.service.SecurityService;
@Controller
public class LoginController {
	@Autowired
	EmpService service;
	@Autowired
	SecurityService secservice;
	
	@RequestMapping(value="/erp/login.do", method=RequestMethod.GET)
	public String emploginView(){
		return "erp/login";
	}
	
	@RequestMapping(value="/erp/login.do", method=RequestMethod.POST)
	public String empinsert(EmpDTO emp,HttpSession session){
		//System.out.println("emp"+emp);
		
		EmpDTO loginUser = service.login(emp);
		
		String url = "";
		if(loginUser!=null) {
			session.setAttribute("erploginUser", loginUser);
			url = "redirect:/erp/index.do";
			
			//출입증 만료
			SecurityDTO sec = secservice.secCheck(loginUser.getEmpno());
			if(sec != null & sec.getScstate().equals("1")) {
				String today = new java.text.SimpleDateFormat ("yyyy-MM-dd").format(new java.util.Date()); 
				SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd"); 
				String exdate=fmt.format(sec.getExdate()); 
				if(today.equals(exdate)) {
					secservice.expire(sec.getScno());
				}
			}
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
