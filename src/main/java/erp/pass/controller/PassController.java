package erp.pass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PassController {
	@RequestMapping("/erp/pass.do")
	public String insertView(){
		return "erp/pass";
	}
	
}
