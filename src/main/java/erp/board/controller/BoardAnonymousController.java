package erp.board.controller;
 
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import erp.board.DTO.BoardAnonymousDTO;
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
	public String anonymousinsert(BoardAnonymousDTO post, HttpSession ses){
		System.out.println("컨트롤러 요청");
		System.out.println("게시글 : "+post);
		return "erp/anonymouslist";
	}
	
	@RequestMapping("/erp/anonymousread.do")
	public String read(int boardno){
		return "erp/boardread2";
	}
}
