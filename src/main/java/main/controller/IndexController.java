package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	@RequestMapping("/main/index.do")
	public String main() {
		return "index";
	}

	@RequestMapping("/main/realtime.do")
	public String realtime() {
		return "realtime";
	}

	@RequestMapping("/main/passenger.do")
	public String predictPassenger() {
		return "passenger";
	}

	@RequestMapping("/main/flight.do")
	public String predictFlight() {
		return "abnormalflight";
	}

	@RequestMapping("/main/myservice.do")
	public String myservice() {
		return "myservice";
	}

	@RequestMapping("/main/signin.do")
	public String signin() {
		return "signin";
	}

	@RequestMapping("/main/privacy.do")
	public String privacy() {
		return "privacy";
	}
}