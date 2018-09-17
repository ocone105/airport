package erp.insa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
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
public class EmpUpdateController {
	@Autowired
	DeptService deptservice;
	
	@Autowired
	EmpService empservice;
	
	@RequestMapping(value="/erp/empupdate.do", method=RequestMethod.GET)
	public ModelAndView updateView(String empno, String deptno){
		ModelAndView mav = new ModelAndView();
		int empnumber = Integer.parseInt(empno);
		
		//부서 재선택
		List<DeptDTO> deptlist =deptservice.deptList();
		// emp 정보
		EmpDTO emp = empservice.empread(empnumber);
		//현재 부서 정보
		List<DeptDTO> curdept = deptservice.getByUpper(emp.getDeptno());
		List<DeptDTO> updept = deptservice.getByUpper(curdept.get(0).getUppercode());
 		String curupcode = deptservice.getUpcode(deptno);
 		
 		if(updept.size()!=0) {
 			mav.addObject("upcode", updept.get(0).getUppercode());
 		}else {
 			mav.addObject("upcode", curdept.get(0).getUppercode());
 		}
 		mav.addObject("curupcode", curupcode);
		mav.addObject("curdept", curdept);
		mav.addObject("updept", updept);
		mav.addObject("deptlist", deptlist);
		mav.addObject("emp", emp);
		mav.setViewName("erp/empupdate");
		return mav;
	}
	
	@RequestMapping(value="/erp/empupdate.do", method=RequestMethod.POST)
	public String empupdate(EmpDTO emp){
		empservice.empupdate(emp);
		return "redirect:/erp/empread.do?empno="+emp.getEmpno();
	}
	
}
