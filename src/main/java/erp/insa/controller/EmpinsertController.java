package erp.insa.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.dept.dao.DeptDAO;
import erp.dept.dto.DeptDTO;
import erp.dept.service.DeptService;
@Controller
public class EmpinsertController {
	@Autowired
	DeptService service;
	
	@RequestMapping("/erp/empinsert.do")
	public  ModelAndView insertView(){
		ModelAndView mav = new ModelAndView();
		List<DeptDTO> deptlist =service.deptList();
		ArrayList<String> ctg1list = new ArrayList<String>();
		if(!deptlist.get(0).getDeptctg1().equals("")) {
			ctg1list.add(deptlist.get(0).getDeptctg1());
		}
		for(int i=1; i<deptlist.size(); i++) {
			if(!deptlist.get(i).getDeptctg1().equals(deptlist.get(i-1).getDeptctg1())) {
				ctg1list.add(deptlist.get(i).getDeptctg1());
			}
		}
		mav.addObject("ctg1list", ctg1list);
		mav.setViewName("erp/empinsert");
		return mav;
	}
}
