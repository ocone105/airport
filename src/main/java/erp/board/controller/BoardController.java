package erp.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class BoardController {
	@RequestMapping("/erp/boardread.do")
	public String anonymouslist(){
		return "erp/boardread";
	}
	
}
