package erp.dept.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.dept.dao.DeptDAO;
import erp.dept.dto.DeptDTO;
@Controller
public class DeptListController {
	@Autowired
	@Qualifier("deptdao")
	DeptDAO dao;
	
	@RequestMapping("/erp/deptlist.do")
	public ModelAndView deptlist(){
		ModelAndView mav = new ModelAndView();
		List<DeptDTO> deptlist =dao.deptList();
		mav.addObject("deptlist", deptlist);
		mav.setViewName("erp/deptlist");
		return mav;
		
	} 
}
