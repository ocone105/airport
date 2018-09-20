package erp.insa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.insa.dto.EmpDTO;
import erp.insa.service.EmpService;
@Controller
public class EmpListController {
	@Autowired
	EmpService service;
	 
	@RequestMapping(value="/erp/emplist.do")
	public ModelAndView emplist(){
		ModelAndView mav = new ModelAndView();
		List<EmpDTO> emplist = service.empList();
		mav.addObject("emplist", emplist);
		mav.setViewName("erp/emplist");
		return mav;
	} 
}
