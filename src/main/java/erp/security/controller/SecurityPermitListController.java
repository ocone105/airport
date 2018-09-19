package erp.security.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/erp/permit.do")
	public String permit(String scno, Model model){
		service.permit(scno);
		List<SecurityDTO> permitlist = service.permitlist();
		model.addAttribute("permitlist", permitlist);
		return "erp/permissionlist";
	}
	
	@RequestMapping("/erp/permitall.do")
	public String permitall(@RequestParam(value = "scno") List<String> scno, Model model){
		//System.out.println(scno.get(0));
		List<SecurityDTO> permitlist = service.permitlist();
		model.addAttribute("permitlist", permitlist);
		return "erp/permissionlist";
	}
}
