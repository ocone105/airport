package erp.pf.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import erp.board.DTO.BoardNoticeCmtDTO;
import erp.dept.dto.DeptDTO;
import erp.pf.DTO.PFDTO;
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
	public ModelAndView pfrequest(){
		ModelAndView mav = new ModelAndView();
		List<PFINFODTO> pfinfo = service.pfinfolist();
		mav.addObject("pfinfo", pfinfo);
		mav.setViewName("erp/pfrequest");
		return mav;
	}
	@RequestMapping("/erp/pflist.do")
	public ModelAndView pfinfolist(){
		ModelAndView mav = new ModelAndView();
		List<PFINFODTO> pfinfo = service.pfinfolist();	// 여객시설정보리스트
		List<PFTEAMDTO> pfteam = service.pfteamlist();	// 시설근무팀 리스트
		mav.addObject("pfinfo", pfinfo);
		mav.addObject("pfteam", pfteam);
		mav.setViewName("erp/pflist");
		return mav;
	}
	@RequestMapping("/erp/pfwrite.do")
	public ModelAndView pfwrite(PFDTO pf){
		ModelAndView mav = new ModelAndView();
		// 인원배치요청
		// service.pfinsert(pf);
		List<PFINFODTO> pfinfo = service.pfinfolist();
		List<PFTEAMDTO> pfteam = service.pfteamlist();
		mav.addObject("pfinfo", pfinfo);
		mav.addObject("pfteam", pfteam);
		mav.setViewName("erp/pflist");
		return mav;
	}
	
	@RequestMapping(value="/erp/pflistAjax.do", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody PFTEAMDTO list(int pfinfono){
		PFTEAMDTO pfteam = service.pfteamlist(pfinfono);
		return pfteam;
	}
}
