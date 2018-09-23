package main.PP.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D  

import main.PP.dto.RealTimePassengerDTO;


@Controller
public class PPController {
	@Autowired
	RealTimePassenger rtpservice;
	
	@RequestMapping("/main/passenger.do")
	public String predictPassenger(Model model) {
		RealTimePassengerDTO ptginfo1 = null;
		RealTimePassengerDTO ptginfo2 = null;
		try {
			ptginfo1 = rtpservice.realTimePassenger("1");
			ptginfo2 = rtpservice.realTimePassenger("2");
		} catch (IOException e) {
			e.printStackTrace();
		}
		model.addAttribute("ptginfo1", ptginfo1);
		model.addAttribute("ptginfo2", ptginfo2);
		return "passenger";
	}

}
