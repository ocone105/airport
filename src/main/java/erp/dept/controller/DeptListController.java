package erp.dept.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import erp.dept.dao.DeptDAO;
import erp.dept.dto.DeptDTO;
import erp.dept.service.DeptService;
@Controller
public class DeptListController {
	@Autowired
	DeptService service;
	
	@RequestMapping("/erp/deptlist.do")
	public ModelAndView deptview(){
		ModelAndView mav = new ModelAndView();
		List<DeptDTO> deptlist =service.deptList();
		mav.addObject("deptlist", deptlist);
		mav.setViewName("erp/deptlist");
		return mav;
		
	} 
	
	@RequestMapping(value = "/erp/ajaxdeptlist", method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public @ResponseBody List<DeptDTO> deptsteplist(String deptno) {
		List<DeptDTO> deptlist = service.deptstepList(deptno);
		//System.out.println(deptlist);
		return deptlist;
	}
	
	@RequestMapping(value = "/erp/ajaxdeptread", method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public @ResponseBody DeptDTO deptread(String deptno) {
		DeptDTO deptInfo = service.deptread(deptno);
		return deptInfo;
	}
}
