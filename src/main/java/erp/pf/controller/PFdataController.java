package erp.pf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.pf.service.PFService;
import main.PF.service.AirlineService;

@Controller
public class PFdataController {
	@Autowired
	PFService service;
	
	@Autowired
	AirlineService airservice;
	
	@RequestMapping("/erp/datalist.do")
	public ModelAndView pfwrite(){
		ModelAndView mav = new ModelAndView();
		
		//mav.addObject("pfinfono",pfinfono);
		mav.setViewName("erp/datalist");
		return mav;
	}
}
