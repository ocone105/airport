package erp.dept.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import erp.dept.dto.DeptDTO;
import erp.dept.service.DeptService;

@Controller
public class DeptUpdateController {
	@Autowired
	DeptService service; 

	@RequestMapping(value="/erp/deptupdate.do", method=RequestMethod.POST)
	public String deptinsert(DeptDTO dept){
		service.deptupdate(dept);
		return "redirect:/erp/deptlist.do";
	} 
	
}
