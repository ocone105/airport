package erp.security.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import erp.security.dto.SecurityDTO;
import erp.security.service.SecurityService;

@Controller
public class SecurityListController {
	@Autowired
	SecurityService service;
	
	@RequestMapping("/erp/passlist.do")
	public String passlist(Model model){
		List<SecurityDTO> passlist = service.passlist();
		model.addAttribute("passlist", passlist);
		return "erp/passlist";
	}

}
