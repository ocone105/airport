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
import org.springframework.web.util.WebUtils;

import erp.board.DTO.BoardNoticeDTO;
import erp.board.service.BoardNoticeService;

@Controller
public class BoardNoticeController {
	
	@Autowired
	BoardNoticeService service;
	
	FileOutputStream fos;
	
	@RequestMapping("/erp/noticelist.do")
	public String noticelist(){
		return "erp/noticelist";
	}
	@RequestMapping(value="/erp/noticewrite.do",method=RequestMethod.GET) 
	public String noticewrite(){
		return "erp/noticewrite";
	}
	@RequestMapping(value="/erp/noticewrite.do",method=RequestMethod.POST) 
	public String noticeinsert(BoardNoticeDTO post, HttpSession session) throws Exception{
		
		// 파일업로드
		MultipartFile file = post.getFileName();
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/ERP/board/upload");
		String fileName = file.getOriginalFilename();
		System.out.println("path : "+path+"   fileName : "+fileName);
		upload(file, path, fileName);
		service.insert(post);
		List<BoardNoticeDTO> posts = service.boardlist();
		System.out.println("게시글 : "+posts);
		return "erp/noticelist";
	}
	
	
	// 파일업로드 로직
	public void upload(MultipartFile file, String path, String fileName) {
		try {
			byte[] data = file.getBytes();
			fos = new FileOutputStream(path+File.pathSeparator+fileName);
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
}
