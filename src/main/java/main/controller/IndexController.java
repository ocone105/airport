package main.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import main.api.FlightDTO;
import main.api.realtimeAPI;

@Controller
public class IndexController {

	@RequestMapping("/main/index.do")
	public String main() {
		return "index";
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
	
	@RequestMapping("/main/email.do")
	public String rejectEmail() {
		return "email";
	}
}