package erp.insa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class EmplistController {
	@RequestMapping("/erp/empinsert.do")
	public String insertView(){
		return "erp/empinsert";
	}
	@RequestMapping("/erp/emplist.do")
	public String emplist(){
		return "erp/emplist";
	}
}
