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

import erp.board.DTO.BoardAnonymousDTO;
import erp.board.service.BoardAnonymousService;
import erp.insa.service.EmpService;
import main.PF.dto.connection.ConnectionDTO;
import main.PF.service.AirlineService;

@Controller
public class BoardAnonymousController {

	@Autowired
	BoardAnonymousService service;
	@Autowired
	EmpService empservice;

	@RequestMapping("/erp/anonymouslist.do")
	public ModelAndView anonymouslist() {
		List<BoardAnonymousDTO> posts = service.boardlist();
		return new ModelAndView("erp/anonymouslist", "posts", posts);
	}

	@RequestMapping(value = "/erp/anonymouswrite.do", method = RequestMethod.GET)
	public String anonymouswrite() {
		return "erp/anonymouswrite";
	}

	@RequestMapping(value = "/erp/anonymouswrite.do", method = RequestMethod.POST)
	public String anonymousinsert(BoardAnonymousDTO post, HttpSession session) throws Exception {

		// 파일업로드
		if (post.getUpfile().isEmpty()) {
			post.setAttach("null");
		} else {
			MultipartFile file = post.getUpfile();
			String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/ERP/board/upload/");
			String fileName = file.getOriginalFilename();
			post.setAttach(fileName);
			// System.out.println("path : " + path + " fileName : " + fileName);
			upload(file, path, fileName);
		}

		service.insert(post);

		return "redirect:/erp/anonymouslist.do";
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
				if (fos != null)
					fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@RequestMapping("/erp/anonymousread.do")
	public ModelAndView read(int boardno) {
		ModelAndView mav = new ModelAndView();
		service.hits(boardno);
		BoardAnonymousDTO post = service.read(boardno);
		List<BoardAnonymousDTO> cmt = service.Cmtlist(boardno);
		if(post.getAttach().equals("null")) {
			post.setAttach("");
		}
		String id = empservice.getId(post.getEmpno());
		mav.addObject("id",id);
		mav.addObject("post",post);
		mav.addObject("cmt", cmt);
		mav.setViewName("erp/boardread2");
		return mav;
	}
	
	@RequestMapping(value="/erp/anonymousupdate.do", method=RequestMethod.GET)
	public ModelAndView update1(int boardno){
		BoardAnonymousDTO post = service.read(boardno);
		return new ModelAndView("erp/anonymousupdate", "post", post);
	}
	
	@RequestMapping(value="/erp/anonymousupdate.do", method=RequestMethod.POST)
	public String update2(BoardAnonymousDTO post, HttpSession session) throws Exception{
		if(post.getUpfile().isEmpty()) {
			BoardAnonymousDTO origin = service.read(post.getBoardno());
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
		return "redirect:/erp/anonymouslist.do";
	}
	
	@RequestMapping("/erp/anonymousdelete.do")
	public String delete(int boardno){
		service.delete(boardno);
		return "redirect:/erp/anonymouslist.do";
	}
	
	@RequestMapping(value="/erp/aboardsearch.do")
	public ModelAndView empsearch(String tag, String search){
		ModelAndView mav = new ModelAndView();
		List<BoardAnonymousDTO> posts = service.aboardsearch(tag, search);
		System.out.println(posts);
		mav.addObject("posts", posts);
		mav.setViewName("erp/anonymouslist");
		return mav;
	}
	
	
}
