package main.PP.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.dept.dto.DeptDTO;
import main.PP.dto.PredictPassengerDTO;
import main.PP.dto.RealTimePassengerDTO;


@Controller
public class PPController {
	@Autowired
	RealTimePassenger rtpservice;
	
	@Autowired
	PredictPassenger ppservice;
	
	@RequestMapping("/main/passenger.do")
	public String predictPassenger(Model model) {
		RealTimePassengerDTO ptginfo1 = null;
		RealTimePassengerDTO ptginfo2 = null;
		ArrayList<PredictPassengerDTO> ppinfolist1 = null;
		try {
			ptginfo1 = rtpservice.realTimePassenger("1");
			ptginfo2 = rtpservice.realTimePassenger("2");
			ppinfolist1 =  ppservice.PredictPassenger("0");
		} catch (IOException e) {
			e.printStackTrace();
		}
		model.addAttribute("ptginfo1", ptginfo1);
		model.addAttribute("ptginfo2", ptginfo2);
		model.addAttribute("ppinfolist1", ppinfolist1);
		return "passenger";
	}
	
	@RequestMapping(value = "/erp/todaylist.do", method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public @ResponseBody List<PredictPassengerDTO> todayPPlist(String selectdate) {
		ArrayList<PredictPassengerDTO> ppinfolist = null;
		try {
			ppinfolist = ppservice.PredictPassenger(selectdate);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return ppinfolist;
	}
	
	@RequestMapping(value = "/erp/tomorrowlist.do", method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public @ResponseBody List<PredictPassengerDTO> tomorrowPPlist(String selectdate) {
		ArrayList<PredictPassengerDTO> ppinfolist = null;
		try {
			ppinfolist = ppservice.PredictPassenger(selectdate);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return ppinfolist;
	}
	

}
