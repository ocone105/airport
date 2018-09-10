package erp.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class BoardAnonymousController {
	@RequestMapping("/erp/anonymouslist.do")
	public String anonymouslist(){
		return "erp/anonymouslist";
	}
	@RequestMapping(value="/erp/anonymouswrite.do",method=RequestMethod.GET) 
	public String anonymouswrite(){
		return "erp/anonymouswrite";
	}
	@RequestMapping(value="/erp/anonymouswrite.do",method=RequestMethod.POST) 
	public String anonymousinsert(){
		return "erp/anonymouslist";
	}
	
}
