package erp.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.dept.dto.DeptDTO;
import erp.dept.service.DeptService;
@Controller
public class ERPController {
	@Autowired
	DeptService service;

	@RequestMapping("/erp/index.do")
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		List<DeptDTO> deptlist =service.deptList();
		mav.addObject("deptlist", deptlist);
		mav.setViewName("erp/index");
		return mav;
	}
}
