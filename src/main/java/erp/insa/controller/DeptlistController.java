package erp.insa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class DeptlistController {
	@RequestMapping("/erp/empinsert.do")
	public String main(){
		return "erp/empinsert";
	}
}
