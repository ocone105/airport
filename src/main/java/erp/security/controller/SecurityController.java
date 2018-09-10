package erp.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class SecurityController {
	@RequestMapping("/erp/permissionlist.do")
	public String permission(){
		return "erp/permissionlist";
	}
	@RequestMapping("/erp/passlist.do")
	public String passlist(){
		return "erp/passlist";
	}
	
}
