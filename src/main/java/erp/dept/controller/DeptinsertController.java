package erp.dept.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class DeptinsertController {
	@RequestMapping("/erp/deptlist.do")
	public String main(){
		return "erp/deptlist"; 
	} 
}
