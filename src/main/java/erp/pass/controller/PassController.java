package erp.pass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller  
public class PassController {
	@RequestMapping("/erp/pass.do")
	public String insertView(Model model){
		String today = new java.text.SimpleDateFormat ("yyyy-MM-dd").format(new java.util.Date()); 
		//System.out.println(today);
		model.addAttribute("today", today);
		return "erp/pass";
	}
	
}
