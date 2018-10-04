package main.realtime.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.AbstractView;

import erp.pf.controller.AirportMongoData;
import erp.pf.service.PFService;
import main.PP.controller.PredictPassenger;
import main.PP.controller.RealTimePassenger;
import main.PP.dto.PredictPassengerDTO;

@Controller
public class IndexController extends AbstractView{

	@Autowired
	PFService service;
	@Autowired
	PredictPassenger ppservice;
	@Autowired
	AirportMongoData amservice;
	
	@RequestMapping("/main/index.do")
	public String main(Model model) {

		ArrayList<PredictPassengerDTO> ppinfolist1 = null;
		String today = new java.text.SimpleDateFormat ("yyyy-MM-dd").format(new java.util.Date()); 
		int passengerresult = 0;
		try {
			ppinfolist1 =  ppservice.PredictPassenger("0");
			
			for(int i=0; i<ppinfolist1.size(); i++) {
				PredictPassengerDTO ppinfo = ppinfolist1.get(i);
				String atime = ppinfo.getAtime().substring(0, 2);
				if(today.substring(2, 4).equals(atime)) {
					passengerresult = (int) (passengerresult + ppinfolist1.get(i).getT1sum5()
							+ ppinfolist1.get(i).getT1sum6()
							+ ppinfolist1.get(i).getT1sum7()+ ppinfolist1.get(i).getT1sum8()
							+ ppinfolist1.get(i).getT2sum3()+ppinfolist1.get(i).getT2sum4());
				}
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		today = new java.text.SimpleDateFormat ("yyyyMMdd").format(new java.util.Date()); 
		int todate = Integer.parseInt(today);
		todate = todate - 10000;
		
		
		model.addAttribute("todayflight", amservice.condition(todate));
		model.addAttribute("passengerresult", passengerresult);
		model.addAttribute("ppinfolist1", ppinfolist1);

		return "index";
	}

	@RequestMapping("/main/signin.do")
	public String signin() {
		return "signin";
	}

	@RequestMapping("/main/privacy")
	public String privacy() {
		return "privacy";
	}
	
	@RequestMapping("/main/email")
	public String rejectEmail() {
		return "email";
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> arg0, HttpServletRequest arg1, HttpServletResponse arg2)
			throws Exception {
		
	}
}