package erp.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class BoardNoticeController {
	@RequestMapping("/erp/noticelist.do")
	public String noticelist(){
		return "erp/noticelist";
	}
	@RequestMapping(value="/erp/noticewrite.do",method=RequestMethod.GET) 
	public String noticewrite(){
		return "erp/noticewrite";
	}
	@RequestMapping(value="/erp/noticewrite.do",method=RequestMethod.POST) 
	public String noticeinsert(){
		return "erp/noticelist";
	}
}
