package erp.dept.controller;

import java.util.ArrayList;
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
		mav.setViewName("erp/deptinsert");
		return mav;
	} 
	
	@RequestMapping(value="/erp/deptwrite.do", method=RequestMethod.POST)
	public String deptinsert(DeptDTO dept){
		System.out.println(dept);
		service.deptinsert(dept);
		return "redirect:/erp/deptlist.do";
	} 
	
	
	///erp/deptwrite.do
	@RequestMapping(value = "/erp/ctglist.do", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody List<DeptDTO> cmtinsert(String category, String action) {
		List<DeptDTO> ctglist = null;
		if(action.equals("ctg1")) {
			ctglist = service.getctg2(category);
		}else if(action.equals("ctg2")) {
			ctglist = service.getctg3(category);
		}
		return ctglist;
	}
}
