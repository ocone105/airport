package erp.pf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	// 인원요청
	@RequestMapping("/erp/pfrequest.do")
	public ModelAndView pfrequest(String pfname){
		ModelAndView mav = new ModelAndView();
		if(pfname!=null) {
			DeptDTO dept = service.getDept(pfname);
			System.out.println("부서 "+dept);
			mav.addObject("dept", dept);
		}
		List<PFINFODTO> pfinfo = service.pfinfolist();
		mav.addObject("pfinfo", pfinfo);
		mav.addObject("name",pfname);
		mav.setViewName("erp/pfrequest");
		return mav;
	}
	
	// 인원요청 insert
	@RequestMapping("/erp/pfwrite.do")
	public ModelAndView pfwrite(PFDTO pf, String deptname){
		ModelAndView mav = new ModelAndView();
		DeptDTO dept = service.dept(deptname);
		String deptno = dept.getDeptno();
		pf.setDeptno(deptno);
		
		// 인원배치요청
		service.pfinsert(pf);
		List<PFINFODTO> pfinfo = service.pfinfolist();
		List<PFTEAMDTO> pfteam = service.pfteamlist();
		mav.addObject("pfinfo", pfinfo);
		mav.addObject("pfteam", pfteam);
		mav.setViewName("erp/pflist");
		return mav;
	}
	
	@RequestMapping(value="/erp/pflistAjax.do", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody DeptDTO list(int pfinfono){
		PFINFODTO pfinfo = service.getPfinfo(pfinfono);
		String pfname = pfinfo.getPfname();
		DeptDTO dept = service.getDept(pfname);
		return dept;
	}
	
	// 인원배치조회
	@RequestMapping("/erp/pflist.do")
	public ModelAndView pfinfolist(){
		ModelAndView mav = new ModelAndView();
		List<PFINFODTO> pfinfo = service.pfinfolist();	// 여객시설정보리스트
		List<PFTEAMDTO> pfteam = service.pfteamlist();	// 시설근무팀리스트
		List<Integer> pfinfono = service.pflist();		// 인원요청리스트
		mav.addObject("pfinfo", pfinfo);
		mav.addObject("pfteam", pfteam);
		mav.addObject("pfinfono",pfinfono);
		mav.setViewName("erp/pflist");
		return mav;
	}
	
	// 인원배치조회 확인
	@RequestMapping("/erp/pfrequestCheck.do")
	public ModelAndView check1(int pfinfono){
		ModelAndView mav = new ModelAndView();
		List<PFDTO> pf = service.pflist(pfinfono);
		mav.addObject("pf",pf);
		mav.setViewName("erp/pfcheck");
		return mav;
	}
	
	@RequestMapping("/erp/pfcheck.do")
	public String check2(@RequestParam(value = "pfno",required=false) List<Integer> pfnoList){
		if(pfnoList!=null) {
			for(int i=0; i<pfnoList.size();i++) {
				//service.permit(pfnoList.get(i));
			}
		}
		/*List<PFDTO> pf = service.pflist(pfinfono);
		mav.addObject("pf",pf);*/
		return "redirect:/erp/pflist.do";
	}

}
