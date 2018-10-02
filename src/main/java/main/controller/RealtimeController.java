package main.controller;

import org.springframework.stereotype.Controller;

@Controller
public class RealtimeController {

/*	@Autowired
	realtimeAPI api;
	
	@RequestMapping("/main/realtime.do")
	public ModelAndView realtime() throws Exception {
		ArrayList<FlightDTO> info = api.realtime(""); 
		for (int i = 0; i < info.size(); i++) {
			String time1 = String.valueOf( info.get(i).getScheduleDateTime());
			String month = time1.substring(4,6);
			String day = time1.substring(6,8);
			String hour = time1.substring(8,10);
			String min = time1.substring(10,12);
			String time2 = month+"/"+day+"\t"+hour+":"+min;
			//System.out.println(time2);
			info.get(i).setTime(time2);;
		}
		return new ModelAndView("realtime", "info", info);
	}
	
	@RequestMapping("/main/realtimeSearch.do")
	public ModelAndView realtimeSearch(String destination, String airline, String flight, String time) throws Exception {
		ArrayList<FlightDTO> info = api.realtime(destination); 
		for (int i = 0; i < info.size(); i++) {
			String time1 = String.valueOf( info.get(i).getScheduleDateTime());
			String month = time1.substring(4,6);
			String day = time1.substring(6,8);
			String hour = time1.substring(8,10);
			String min = time1.substring(10,12);
			String time2 = month+"/"+day+"\t"+hour+":"+min;
			//System.out.println(time2);
			info.get(i).setTime(time2);;
		}
		return new ModelAndView("realtime", "info", info);
	}*/
}
