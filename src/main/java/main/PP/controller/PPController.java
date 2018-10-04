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
			
			String Cgthm = ptginfo1.getCgthm();
			String hour = Cgthm.substring(0, 2);
			String min = Cgthm.substring(2,4);
			//System.out.println(Cgthm + ","+ hour + ","+min);
			Cgthm = hour + "시 " + min +"분";
			ptginfo1.setCgthm(Cgthm);
			
			Cgthm = ptginfo2.getCgthm();
			hour = Cgthm.substring(0, 2);
			min = Cgthm.substring(2,4);
			Cgthm = hour + "시 " + min +"분";
			ptginfo2.setCgthm(Cgthm);
			
			for(int i=0; i<ppinfolist1.size(); i++) {
				PredictPassengerDTO ppinfo = ppinfolist1.get(i);
				String atime = ppinfo.getAtime();
				atime = atime.replace("_","시 ~ ");
				atime = atime +"시";
				ppinfolist1.get(i).setAtime(atime);
			}
			
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
		System.out.println("check"+selectdate);
		ArrayList<PredictPassengerDTO> ppinfolist = null;
		try {
			ppinfolist = ppservice.PredictPassenger(selectdate);
			for(int i=0; i<ppinfolist.size(); i++) {
				PredictPassengerDTO ppinfo = ppinfolist.get(i);
				String atime = ppinfo.getAtime();
				atime = atime.replace("_","시 ~ ");
				atime = atime +"시";
				ppinfolist.get(i).setAtime(atime);
			}
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
			for(int i=0; i<ppinfolist.size(); i++) {
				PredictPassengerDTO ppinfo = ppinfolist.get(i);
				String atime = ppinfo.getAtime();
				atime = atime.replace("_","시 ~ ");
				atime = atime +"시";
				ppinfolist.get(i).setAtime(atime);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return ppinfolist;
	}
	

}
