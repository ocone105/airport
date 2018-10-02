package erp.insa.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.insa.dto.EmpDTO;
import erp.insa.service.EmpService;
import erp.security.dto.SecurityDTO;
@Controller
public class EmpReadController {
	@Autowired
	EmpService service;
	
	@RequestMapping(value="/erp/empread.do", method=RequestMethod.GET)
	public ModelAndView insertView(int empno){
		ModelAndView mav = new ModelAndView();
		EmpDTO emp =service.empread(empno);
		mav.addObject("emp", emp);
		mav.setViewName("erp/empread");
		return mav;
	}
	
	@RequestMapping(value="/erp/empservice.do", method=RequestMethod.GET)
	public String serviceView(){
		return "erp/empservice";
	}
	

}
