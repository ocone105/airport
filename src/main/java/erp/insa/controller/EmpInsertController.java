package erp.insa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import erp.dept.dto.DeptDTO;
import erp.dept.service.DeptService;
import erp.insa.dto.EmpDTO;
import erp.insa.service.EmpService;
@Controller
public class EmpInsertController {
	@Autowired
	DeptService deptservice;
	
	@Autowired
	EmpService empservice;
	
	@RequestMapping(value="/erp/empinsert.do", method=RequestMethod.GET)
	public ModelAndView insertView(){
		ModelAndView mav = new ModelAndView();
		List<DeptDTO> deptlist =deptservice.deptList();
		mav.addObject("deptlist", deptlist);
		mav.setViewName("erp/empinsert");
		return mav;
	}
	
	@RequestMapping(value="/erp/empinsert.do", method=RequestMethod.POST)
	public String empinsert(EmpDTO emp){
		empservice.empinsert(emp);
		//System.out.println(emp); 
		return "redirect:/erp/emplist.do";
	}
	
	@RequestMapping(value = "/erp/insadept", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody List<DeptDTO> deptsteplist(String deptno) {
		List<DeptDTO> deptlist = deptservice.deptstepList(deptno);
		return deptlist;
	}
}
