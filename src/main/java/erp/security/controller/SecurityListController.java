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

	@RequestMapping("/erp/passread.do")
	public String passread(String scno,Model model){
		SecurityDTO sec = service.secread(scno);
		model.addAttribute("sec", sec);
		return "erp/passread";
	}
	
	@RequestMapping("/erp/seccancel.do")
	public String passread(int empno){
		service.delete(empno);
		return "redirect:/erp/passlist.do";
	}

}
