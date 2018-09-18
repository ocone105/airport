package erp.security.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import erp.security.dto.SecurityDTO;
import erp.security.service.SecurityService;

@Controller
public class SecurityPermitListController {
	@Autowired
	SecurityService service;
	
	@RequestMapping("/erp/permissionlist.do")
	public String permitist(Model model){
		List<SecurityDTO> permitlist = service.permitlist();
		model.addAttribute("permitlist", permitlist);
		return "erp/permissionlist";
	}
	
}
