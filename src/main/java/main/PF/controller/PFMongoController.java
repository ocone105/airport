package main.PF.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import main.PF.dto.complex.ComplexDTO;
import main.PF.dto.complex.Complex_CancelDTO;
import main.PF.dto.complex.Complex_DelayDTO;
import main.PF.dto.condition.ConditionDTO;
import main.PF.dto.condition.Condition_CancelDTO;
import main.PF.dto.condition.Condition_DelayDTO;
import main.PF.dto.connection.ConnectionDTO;
import main.PF.dto.connection.Connection_CancelDTO;
import main.PF.dto.connection.Connection_DelayDTO;
import main.PF.dto.repair.RepairDTO;
import main.PF.dto.repair.Repair_CancelDTO;
import main.PF.dto.repair.Repair_DelayDTO;
import main.PF.service.AirlineService;
import main.realtime.api.FlightDTO;
import main.realtime.api.MyFlightDTO;
import main.realtime.api.realtimeAPI;
@Controller
public class PFMongoController {

	@Autowired 
	AirlineService service;
	
	@Autowired
	realtimeAPI api;
	
	@RequestMapping("/main/flight.do")
	public ModelAndView predictFlight() throws Exception{
		/*int con1 = connection("대한항공");
		int con2 = connectionDelay("대한항공");
		int con3 = connectionCancel("대한항공");
		System.out.println("항공사(연결) : "+con1+" * "+con2+" * "+con3);
		int repair1 = repair("LJ221");
		int repair2 = repairDelay("LJ221");
		int repair3 = repairCancel("OK191");
		System.out.println("편명(정비) : "+repair1+" * "+repair2+" * "+repair3);
		int com1 = complex("09");
		int com2 = complexDelay("09");
		int com3 = complexCancel("14");
		System.out.println("시간(혼잡) : "+com1+" * "+com2+" * "+com3);
		
		int cond2 = conditionDelay(20171008);int cond1 = condition(20171008);
		int cond3 = conditionCancel(20171223);
		System.out.println("날짜(날씨) : "+cond1+" * "+cond2+" * "+con3);
		double rst = (1 - (1 - (double)con2/con1)*(1 - (double)repair2/repair1)*(1 - (double)com2/com1)*(1 - (double)cond2/cond1));
		double result = Double.parseDouble(String.format("%.2f" , rst*100 ) );	// 소수점2째자리까지
		System.out.println("최종 결과 : "+result+"%");*/
		
		ArrayList<FlightDTO> info = api.realtime("");
		List<Double> delay = null;
		for (int i = 0; i < info.size(); i++) {
			String airline = info.get(i).getAirline();
			String flight = info.get(i).getFlightId();
			int date = Integer.parseInt(String.valueOf(info.get(i).getScheduleDateTime()).substring(0,8))-10000;
			String time = String.valueOf(info.get(i).getScheduleDateTime()).substring(8,10);
			double con1 = connection(airline);
			double con2 = connectionDelay(airline);
			double con3 = connectionCancel(airline);
			double repair1 = repair(flight);
			double repair2 = repairDelay(flight);
			double repair3 = repairCancel(flight);
			double com1 = complex(time);
			double com2 = complexDelay(time);
			double com3 = complexCancel(time);
			double cond1 = condition(date);
			double cond2 = conditionDelay(date);
			double cond3 = conditionCancel(date);
			double num1 = 0;
			double num2 = 0;
			double num3 = 0;
			double num4 = 0;
			try {
				num1 = (double) (1 - con2 / con1);
			} catch (ArithmeticException e) {
				num1 = 1.0;
			}
			try {
				num2 = (double) (1 - repair2 / repair1);
			} catch (ArithmeticException e) {
				num2 = 1.0;
			}
			try {
				num3 = (double) (1 - com2 / com1);
			} catch (ArithmeticException e) {
				num3 = 1.0;
			}
			try {
				num4 = (double) (1 - cond2 / cond1);
			} catch (ArithmeticException e) {
				num4 = 1.0;
			}
			
			if(con1==0.0||con2==0.0) {
				num1=1.0;
			}if(repair1==0.0||repair2==0.0) {
				num2=1.0;
			}if(com1==0.0||com2==0.0) {
				num3=1.0;
			}if(cond1==0.0||cond2==0.0) {
				num4=1.0;
			}
			double num = (1 - num1*num2*num3*num4);
			double result = Double.parseDouble(String.format("%.2f" , num*100 ) );
			info.get(i).setDelay(result);
			// System.out.println("최종 결과 : "+result+"%");
		}
		
		for (int i = 0; i < info.size(); i++) {
			String time1 = String.valueOf(info.get(i).getScheduleDateTime());
			String month = time1.substring(4, 6);
			String day = time1.substring(6, 8);
			String hour = time1.substring(8, 10);
			String min = time1.substring(10, 12);
			String time2 = month + "/" + day + "\t" + hour + ":" + min;
			// System.out.println(time2);
			info.get(i).setTime(time2);
		}
		return new ModelAndView("abnormalflight", "info", info);
	}
	
	@RequestMapping("/main/PFSearch.do")
	public ModelAndView pfSearch(String destination, String airline, String flight, String time)
			throws Exception {
		ArrayList<FlightDTO> desti = null;
		
		ArrayList<FlightDTO> info =  api.realtime(destination);
		List<Double> delay = null;
		for (int i = 0; i < info.size(); i++) {
			String Airline = info.get(i).getAirline();
			String Flight = info.get(i).getFlightId();
			int Date = Integer.parseInt(String.valueOf(info.get(i).getScheduleDateTime()).substring(0,8))-10000;
			String Time = String.valueOf(info.get(i).getScheduleDateTime()).substring(8,10);
			double con1 = connection(Airline);
			double con2 = connectionDelay(Airline);
			double repair1 = repair(Flight);
			double repair2 = repairDelay(Flight);
			double com1 = complex(Time);
			double com2 = complexDelay(Time);
			double cond1 = condition(Date);
			double cond2 = conditionDelay(Date);
			double num1 = 0;
			double num2 = 0;
			double num3 = 0;
			double num4 = 0;
			try {
				num1 = (double) (1 - con2 / con1);
			} catch (ArithmeticException e) {
				num1 = 1.0;
			}
			try {
				num2 = (double) (1 - repair2 / repair1);
			} catch (ArithmeticException e) {
				num2 = 1.0;
			}
			try {
				num3 = (double) (1 - com2 / com1);
			} catch (ArithmeticException e) {
				num3 = 1.0;
			}
			try {
				num4 = (double) (1 - cond2 / cond1);
			} catch (ArithmeticException e) {
				num4 = 1.0;
			}
			
			if(con1==0.0||con2==0.0) {
				num1=1.0;
			}if(repair1==0.0||repair2==0.0) {
				num2=1.0;
			}if(com1==0.0||com2==0.0) {
				num3=1.0;
			}if(cond1==0.0||cond2==0.0) {
				num4=1.0;
			}
			double num = (1 - num1*num2*num3*num4);
			double result = Double.parseDouble(String.format("%.2f" , num*100 ) );
			info.get(i).setDelay(result);
			// System.out.println("최종 결과 : "+result+"%");
		}
		
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
		return new ModelAndView("abnormalflight", "info", info);
	}
	
	
	@RequestMapping("/main/myFlight2.do")
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
		myflight.setDelay(splitArr[6]);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("loginUser");
		myflight.setId(id);
		
		api.myflight1(myflight);

		return "redirect:/main/myservice";
	}
		
		
	public int connection(String airline) {
		List<ConnectionDTO> connlist = service.findcon();
		int result = 0;
		for(int i=0; i<connlist.size();i++) {
			if(connlist.get(i).get_id().equals(airline)) {
				result = connlist.get(i).getValue();
			}
		}
		return result;
	}
	
	public int connectionDelay(String airline) {
		List<Connection_DelayDTO> connlistDelay = service.findcon_delay();
		int result = 0;
		for(int i=0; i<connlistDelay.size();i++) {
			if(connlistDelay.get(i).get_id().equals(airline)) {
				result = connlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	
	public int connectionCancel(String airline) {
		List<Connection_CancelDTO> connlistCancel = service.findcon_cancel();
		int result = 0;
		for(int i=0; i<connlistCancel.size();i++) {
			if(connlistCancel.get(i).get_id().equals(airline)) {
				result = connlistCancel.get(i).getValue();
			}
		}
		return result;
	}
	
	private int repair(String flight) {
		List<RepairDTO> relist = service.findre();
		int result = 0;
		for(int i=0; i<relist.size();i++){
			if(relist.get(i).get_id().equals(flight)) {
				result = relist.get(i).getValue();
			}
		}
		return result;
	}
	
	private int repairDelay(String flight) {
		List<Repair_DelayDTO> relistDelay = service.findre_delay();
		int result = 0;
		for(int i=0; i<relistDelay.size();i++){
			if(relistDelay.get(i).get_id().equals(flight)) {
				result = relistDelay.get(i).getValue();
			}
		}
		return result;
	}
	
	private int repairCancel(String flight) {
		List<Repair_CancelDTO> relistCancel = service.findre_cancel();
		int result = 0;
		for(int i=0; i<relistCancel.size();i++){
			if(relistCancel.get(i).get_id().equals(flight)) {
				result = relistCancel.get(i).getValue();
			}
		}
		return result;
	}
	
	public int complex(String time) {
		List<ComplexDTO> comlist = service.findcom();
		int result = 0;
		for(int i=0; i<comlist.size();i++){
			if(comlist.get(i).get_id().equals(time)) {
				result = comlist.get(i).getValue();
			}
		}
		return result;
	}
	
	public int complexDelay(String time) {
		List<Complex_DelayDTO> comlistDelay = service.findcom_delay();
		int result = 0;
		for(int i=0; i<comlistDelay.size();i++){
			if(comlistDelay.get(i).get_id().equals(time)) {
				result = comlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	
	public int complexCancel(String time) {
		List<Complex_CancelDTO> comlistCancel = service.findcom_cancel();
		int result = 0;
		for(int i=0; i<comlistCancel.size();i++){
			if(comlistCancel.get(i).get_id().equals(time)) {
				result = comlistCancel.get(i).getValue();
			}
		}
		return result;
	}
	
	public int condition(int date) {
		List<ConditionDTO> condlist = service.findcond();
		int result = 0;
		for(int i=0; i<condlist.size();i++) {
			if(condlist.get(i).get_id()==date) {
				result = condlist.get(i).getValue();
			}
		}
		return result;
	}
	
	public int conditionDelay(int date) {
		List<Condition_DelayDTO> condlistDelay = service.findcond_delay();
		int result = 0;
		for(int i=0; i<condlistDelay.size();i++) {
			if(condlistDelay.get(i).get_id()==date) {
				result = condlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	
	public int conditionCancel(int date) {
		List<Condition_CancelDTO> condlistCancel = service.findcond_cancel();
		int result = 0;
		for(int i=0; i<condlistCancel.size();i++) {
			if(condlistCancel.get(i).get_id()==date) {
				result = condlistCancel.get(i).getValue();
			}
		}
		return result;
	}
}
