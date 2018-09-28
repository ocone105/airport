package main.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.AbstractView;

import erp.pf.DTO.PFINFODTO;
import erp.pf.service.PFService;

@Controller
public class IndexController extends AbstractView{

	@Autowired
	PFService service;
	
	@RequestMapping("/main/index.do")
	public String main() {
		return "index";
	}

	@RequestMapping("/main/flight.do")
	public String predictFlight() {
		return "abnormalflight";
	}

	@RequestMapping("/main/myservice.do")
	public ModelAndView myservice() {
		List<PFINFODTO> pf = service.pfinfolist();
		return new ModelAndView("myservice", "pf", pf);
	}

	@RequestMapping("/main/signin.do")
	public String signin() {
		return "signin";
	}

	@RequestMapping("/main/privacy.do")
	public String privacy() {
		return "privacy";
	}
	
	@RequestMapping("/main/email.do")
	public String rejectEmail() {
		return "email";
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> arg0, HttpServletRequest arg1, HttpServletResponse arg2)
			throws Exception {
		
	}
}