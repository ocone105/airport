package erp.pf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PFController {
	@RequestMapping("/erp/datalist.do")
	public String datalist(){
		return "erp/datalist";
	}
	@RequestMapping("/erp/pfrequest.do")
	public String pfrequest(){
		return "erp/pfrequest";
	}
	@RequestMapping("/erp/pflist.do")
	public String pflist(){
		return "erp/pflist";
	}
	
}
