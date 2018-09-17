package erp.dept.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import erp.dept.dto.DeptDTO;
import erp.dept.service.DeptService;

@Controller
public class DeptInsertController {
	@Autowired
	DeptService service; 
	
	@RequestMapping(value="/erp/deptwrite.do", method=RequestMethod.GET)
	public ModelAndView deptlist(){
		ModelAndView mav = new ModelAndView();
		List<DeptDTO> deptlist = service.deptList();
		mav.addObject("deptlist", deptlist);
		mav.setViewName("erp/deptinsert");
		return mav;
	} 
	
	@RequestMapping(value="/erp/deptwrite.do", method=RequestMethod.POST)
	public String deptinsert(DeptDTO dept,String dept1, String dept2){
		if(dept2!=null) {
			dept.setDeptstep(3);
			dept.setUppercode(dept2);
		}else {
			dept.setDeptstep(2);
			dept.setUppercode(dept1);
		}
		System.out.println(dept);
		service.deptinsert(dept);
		return "redirect:/erp/deptlist.do";
	} 
	
	

	@RequestMapping(value = "/erp/deptlist", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody List<DeptDTO> deptsteplist(String deptno) {
		List<DeptDTO> deptlist = service.deptstepList(deptno);
		return deptlist;
	}
}
