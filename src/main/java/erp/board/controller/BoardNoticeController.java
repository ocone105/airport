package erp.board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;
import erp.board.service.BoardNoticeService;

@Controller
public class BoardNoticeController {
	
	@Autowired
	BoardNoticeService service;
	
	@RequestMapping("/erp/noticelist.do")
	public ModelAndView noticelist(String pageNo){
		List<BoardNoticeDTO> posts = service.boardlist();
		return new ModelAndView("erp/noticelist", "posts", posts);
	}
	
	@RequestMapping(value="/erp/noticewrite.do",method=RequestMethod.GET) 
	public String noticewrite(){
		return "erp/noticewrite";
	}
	
	@RequestMapping(value="/erp/noticewrite.do",method=RequestMethod.POST) 
	public String noticeinsert(BoardNoticeDTO post, HttpSession session) throws Exception{

		// 파일업로드
		if(post.getUpfile().isEmpty()) {
			post.setAttach("null");
		} else {
			MultipartFile file = post.getUpfile();
			String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/ERP/board/upload/");
			String fileName = file.getOriginalFilename();
			post.setAttach(fileName);
			// System.out.println("path : " + path + "   fileName : " + fileName);
			upload(file, path, fileName);
		}
		
		service.insert(post);
		
		return "redirect:/erp/noticelist.do";
	}

	FileOutputStream fos;
	
	// 파일업로드 로직
	public void upload(MultipartFile file, String path, String fileName) {
		try {
			byte[] data = file.getBytes();
			fos = new FileOutputStream(path + File.separator + fileName);
			fos.write(data);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(fos!=null) fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping("/erp/noticeread.do")
	public ModelAndView read(int boardno){
		ModelAndView mav = new ModelAndView();
		service.hits(boardno);
		BoardNoticeDTO post = service.read(boardno);
		List<BoardNoticeCmtDTO> cmt = service.Cmtlist(boardno);
		mav.addObject("post",post);
		mav.addObject("cmt", cmt);
		mav.setViewName("erp/boardread1");
		return mav;
	}
	
	@RequestMapping(value="/erp/noticeupdate.do", method=RequestMethod.GET)
	public ModelAndView update1(int boardno){
		BoardNoticeDTO post = service.read(boardno);
		return new ModelAndView("erp/noticeupdate", "post", post);
	}
	
	@RequestMapping(value="/erp/noticeupdate.do", method=RequestMethod.POST)
	public String update2(BoardNoticeDTO post, HttpSession session) throws Exception{
		if(post.getUpfile().isEmpty()) {
			BoardNoticeDTO origin = service.read(post.getBoardno());
			String attach = origin.getAttach();
			post.setAttach(attach);
		} else {
			MultipartFile file = post.getUpfile();
			String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/ERP/board/upload/");
			String fileName = file.getOriginalFilename();
			post.setAttach(fileName);
			upload(file, path, fileName);
		}
		service.update(post);
		return "redirect:/erp/noticelist.do";
	}
	
	@RequestMapping("/erp/noticedelete.do")
	public String delete(int boardno){
		service.delete(boardno);
		return "redirect:/erp/noticelist.do";
	}
}