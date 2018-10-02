package erp.board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import main.PF.dto.connection.ConnectionDTO;
import main.PF.service.AirlineService;

@Controller
public class BoardNoticeController {
	
	@Autowired
	BoardNoticeService service;
	@Autowired 
	AirlineService aservice;
	
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
		if(post.getAttach().equals("null")) {
			post.setAttach("");
		}
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
	
	
	@RequestMapping(value="/erp/board/download.do") 
	public ModelAndView filedownload(String file, int boardno, HttpServletRequest req, HttpServletResponse res) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		// 다운 받은 파일의 절대 경로 필요
		String fileFullPath = "D:\\ICTSub\\work\\3rdProject\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\airport\\WEB-INF\\ERP\\board\\upload/"+file; 
		File downloadFile = new File(fileFullPath);
		if(!downloadFile.canRead()) {
			throw new Exception("파일을 찾을 수 없습니다.");
		}
		
		mav.addObject("downloadFile", downloadFile);
		mav.setViewName("fileDownloadView");
		return mav;
	}
	
	@RequestMapping(value="/erp/nboardsearch.do")
	public ModelAndView empsearch(String tag, String search){
		ModelAndView mav = new ModelAndView();
		List<BoardNoticeDTO> posts = service.nboardsearch(tag, search);
		System.out.println(posts);
		mav.addObject("posts", posts);
		mav.setViewName("erp/noticelist");
		return mav;
	}

}