package erp.pf.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.dept.dto.DeptDTO;
import erp.pf.DTO.PFINFODTO;
import erp.pf.DTO.PFTEAMDTO;
import erp.pf.service.PFService;
@Controller
public class PFController {
	
	@Autowired
	PFService service;
	
	@RequestMapping("/erp/datalist.do")
	public String datalist(){
		return "erp/datalist";
	}
	@RequestMapping("/erp/pfrequest.do")
	public String pfrequest(){
		return "erp/pfrequest";
	}
	@RequestMapping("/erp/pflist.do")
	public ModelAndView pfinfolist(){
		List<PFINFODTO> pfinfo = service.pfinfolist();	// 여객시설정보리스트
		List<String> pfteam = new ArrayList<String>();
		for (int i = 0; i < pfinfo.size(); i++) {
			String teamlist = service.pfteamlist(pfinfo.get(i).getPfinfono());
			pfteam.add(teamlist);
		}
		return new ModelAndView("erp/pflist", "pfinfo", pfinfo);
	}
	
	
	
}
