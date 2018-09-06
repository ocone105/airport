package erp.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ERPController {
	@RequestMapping("/erp/index.do")
	public String main(){
		return "erp/index";
	}
}
