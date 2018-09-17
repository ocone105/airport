package erp.dept.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import erp.dept.service.DeptService;

@Controller
public class DeptDeleteController {
	@Autowired
	DeptService service; 
	
	
	@RequestMapping(value="/erp/deptdelete.do", method=RequestMethod.GET)
	public String deptinsert(String deptno){
		service.deptdelete(deptno);
		return "redirect:/erp/deptlist.do";
	} 

}
