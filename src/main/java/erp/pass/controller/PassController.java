package erp.pass.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import erp.login.authentication.EmpSecurityLoginDTO;
import erp.security.dto.SecurityDTO;
import erp.security.service.SecurityService;

@Controller  
public class PassController {
	@Autowired
	SecurityService service;
	
	@RequestMapping("/erp/pass.do")
	public String insertView(Model model, HttpServletRequest req){
		String today = new java.text.SimpleDateFormat ("yyyy-MM-dd").format(new java.util.Date()); 
		//System.out.println(today);
		HttpSession ses = req.getSession(false);
		EmpSecurityLoginDTO emp = (EmpSecurityLoginDTO)ses.getAttribute("erploginUser");
		SecurityDTO sec = service.secCheck(emp.getEmpno());
		
		model.addAttribute("sec",sec);
		model.addAttribute("today", today);
		return "erp/pass";
	}
	
}
