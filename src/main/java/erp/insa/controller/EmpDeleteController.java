package erp.insa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import erp.insa.service.EmpService;
@Controller
public class EmpDeleteController {
	@Autowired
	EmpService service;
	 
	@RequestMapping(value="/erp/empdelete.do", method=RequestMethod.GET)
	public String empinsert(int empno){
		service.empdelete(empno);
		return "redirect:/erp/emplist.do";
	}
}
