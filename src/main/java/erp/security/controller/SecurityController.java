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
		SecurityDTO security = service.secCheck(sec.getEmpno());
		if(sec.getUpfile().isEmpty()) {
			sec.setImg(security.getImg());
		} else {
			MultipartFile file = sec.getUpfile();
			String path = WebUtils.getRealPath(ses.getServletContext(), "/resources/upload/");
			String fileName = file.getOriginalFilename();
			sec.setImg(fileName);
			fileservice.upload(file, path, fileName);
		}
		if(action.equals("re")) {
			sec.setScno(security.getScno());
			service.reapply(sec);
		}else if(action.equals("first")) {
			service.securityinsert(sec);
		}
		return "redirect:/erp/pass.do";
	}
	
}


 