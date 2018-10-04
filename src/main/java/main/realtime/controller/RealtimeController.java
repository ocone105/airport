package main.realtime.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import main.realtime.api.FlightDTO;
import main.realtime.api.MyFlightDTO;
import main.realtime.api.realtimeAPI;

@Controller
public class RealtimeController {

	@Autowired
	realtimeAPI api;

	@RequestMapping("/main/realtime.do")
	public ModelAndView realtime() throws Exception {
		ArrayList<FlightDTO> info = api.realtime("");
		for (int i = 0; i < info.size(); i++) {
			String time1 = String.valueOf(info.get(i).getScheduleDateTime());
			String month = time1.substring(4, 6);
			String day = time1.substring(6, 8);
			String hour = time1.substring(8, 10);
			String min = time1.substring(10, 12);
			String time2 = month + "/" + day + "\t" + hour + ":" + min;
			// System.out.println(time2);
			info.get(i).setTime(time2);
			;
		}
		return new ModelAndView("realtime", "info", info);
	}

	@RequestMapping("/main/realtimeSearch.do")
	public ModelAndView realtimeSearch(String destination, String airline, String flight, String time)
			throws Exception {
		ArrayList<FlightDTO> desti = null;
		ArrayList<FlightDTO> info =  api.realtime(destination);
		for (int i = 0; i < info.size(); i++) {
			String time1 = String.valueOf(info.get(i).getScheduleDateTime());
			String month = time1.substring(4, 6);
			String day = time1.substring(6, 8);
			String hour = time1.substring(8, 10);
			String min = time1.substring(10, 12);
			String time2 = month + "/" + day + "\t" + hour + ":" + min;
			// System.out.println(time2);
			info.get(i).setTime(time2);
			;
		}
		return new ModelAndView("realtime", "info", info);
	}
	
	@RequestMapping("/main/myFlight.do")
	public String check2(@RequestParam(value="info",required=false) String flightinfo, HttpServletRequest request) throws Exception{
		String splitArr[] = flightinfo.split("\\+");
		for (int i = 0; i < splitArr.length; i++) {
			System.out.println(splitArr[i]);
		}
		MyFlightDTO myflight = new MyFlightDTO();
		myflight.setFlightId(splitArr[0]);
		myflight.setAirline(splitArr[1]);
		myflight.setAirport(splitArr[2]);
		myflight.setScheduleDateTime(splitArr[3]);
		myflight.setGatenumber(splitArr[4]);
		myflight.setRemark(splitArr[5]);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("loginUser");
		myflight.setId(id);
		
		api.myflight1(myflight);

		return "redirect:/main/myservice";
	}
}


