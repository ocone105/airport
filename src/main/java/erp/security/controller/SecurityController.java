package erp.security.controller;

import java.io.FileNotFoundException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import erp.security.dto.SecurityDTO;
import erp.security.service.SecurityService;

@Controller
public class SecurityController {
	@Autowired
	FileUploadLogic fileservice;
	@Autowired
	SecurityService service;
	
	
	@RequestMapping("/erp/permissionlist.do")
	public String permission(){
		return "erp/permissionlist";
	}
	
	@RequestMapping("/erp/passlist.do")
	public String passlist(){
		return "erp/passlist";
	}
	
	@RequestMapping(value = "/erp/scapply.do", method = RequestMethod.POST)
	public String apply(String action,SecurityDTO sec ,HttpSession ses,Model model) throws FileNotFoundException{
		if(sec.getUpfile().isEmpty()) {
			SecurityDTO security = service.secCheck(sec.getEmpno());
			sec.setImg(security.getImg());
		} else {
			MultipartFile file = sec.getUpfile();
			String path = WebUtils.getRealPath(ses.getServletContext(), "/resources/upload/");
			String fileName = file.getOriginalFilename();
			sec.setImg(fileName);
			fileservice.upload(file, path, fileName);
		}
		if(action.equals("re")) {
			
		}else if(action.equals("first")) {
			service.securityinsert(sec);
		}
		return "redirect:/erp/pass.do";
	}
	
}


/*
 * 
 * 	@RequestMapping(value = "/board/insert.do", method = RequestMethod.POST)
	public String write(BoardDTO board, HttpSession session) throws FileNotFoundException {
		// 파일업로드
		MultipartFile[] file = board.getUpFile();
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
		// System.out.println(file.length);
		ArrayList<String> fileName = new ArrayList<String>();
		for (int i = 0; i < file.length; i++) {
			if (!file[i].getOriginalFilename().equals("")) {
				fileName.add(file[i].getOriginalFilename());
			}
		}
		// 파일업로드
		uploadservice.upload(file, path, fileName);
		// board, 첨부파일명 insert
		int result = service.txinsert(board, fileName);
		System.out.println(result + "개 삽입 성공");
		return "redirect:/board/list.do";

	}*/
 