package erp.login.controller;

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
	
	@RequestMapping(value="/erp/logout.do", method=RequestMethod.GET)
	public String insertView(){
		return "erp/login";
	}
	@RequestMapping(value="/erp/login.do", method=RequestMethod.POST)
	public String empinsert(EmpDTO emp){
		System.out.println("emp"+emp);
		
		EmpDTO loginUser = service.login(emp);
		
		String url = "";
		if(loginUser!=null) {
			url = "redirect:/erp/deptlist.do";
		}else {
			url = "erp/login";
		}
		return "erp/login";
	}
}
