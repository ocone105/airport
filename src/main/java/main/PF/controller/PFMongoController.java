package main.PF.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import main.PF.dto.complex.Complex_DelayDTO;
import main.PF.dto.condition.Condition_DelayDTO;
import main.PF.dto.connection.Connection_DelayDTO;
import main.PF.dto.repair.Repair_DelayDTO;
import main.PF.service.AirlineService;
@Controller
public class PFMongoController {

	@Autowired 
	AirlineService service;
	
	@RequestMapping("/main/flight.do")
	public String predictFlight() {
		/*	int con = connectiondelay("대한항공");
		System.out.println("연결"+con);
		int com = complexdelay("09");
		System.out.println("혼잡"+com);
		int repair = repairdelay("LJ221");
		System.out.println("정비"+repair);
		int cond = conditiondelay(20171005);
		System.out.println("날씨"+cond);

		List<ConnectionDTO> connlist = aservice.findcon();
		List<Connection_DelayDTO> connlistDelay = aservice.findcon_delay();
		List<ConditionDTO> condlist = aservice.findcond();
		List<Condition_DelayDTO> condlistDelay = aservice.findcond_delay();
		List<ComplexDTO> comlist = aservice.findcom();
		List<Complex_DelayDTO> comlistDelay = aservice.findcom_delay();
		List<RepairDTO> relist = aservice.findre();
		List<Repair_DelayDTO> relistDelay = aservice.findre_delay();
		List<ConditionDTO> relist = aservice.findre();
		List<Repair_DelayDTO> relistDelay = aservice.findre_delay();
		for (int i = 0; i < relistDelay.size(); i++) {
			for (int j = 0; j < relist.size(); j++) {
				if(relist.get(j).get_id().equals(relistDelay.get(i).get_id())) {
					System.out.println("relist : "+relist.get(j).getValue()+relist.get(j).get_id());
					System.out.println("relist지연 : "+relistDelay.get(i).getValue()+relistDelay.get(i).get_id());
					double result = (double)relistDelay.get(i).getValue()/(double)relist.get(j).getValue() * 100;
					System.out.println(result);
				}
			}
		}*/
		return "abnormalflight";
	}
	
	/*
	public int connectiondelay(String airline) {
		List<Connection_DelayDTO> connlistDelay = aservice.findcon_delay();
		int result = 0;
		for(int i=0; i<connlistDelay.size();i++) {
			if(connlistDelay.get(i).get_id().equals(airline)) {
				result = connlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	public int conditiondelay(int date) {
		List<Condition_DelayDTO> condlistDelay = aservice.findcond_delay();
		int result = 0;
		for(int i=0; i<condlistDelay.size();i++) {
			if(condlistDelay.get(i).get_id()==date) {
				result = condlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	public int complexdelay(String time) {
		List<Complex_DelayDTO> comlistDelay = aservice.findcom_delay();
		int result = 0;
		for(int i=0; i<comlistDelay.size();i++){
			if(comlistDelay.get(i).get_id().equals(time)) {
				result = comlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	
	private int repairdelay(String flight) {
		List<Repair_DelayDTO> relistDelay = aservice.findre_delay();
		int result = 0;
		for(int i=0; i<relistDelay.size();i++){
			if(relistDelay.get(i).get_id().equals(flight)) {
				result = relistDelay.get(i).getValue();
			}
		}
		return result;
	}
	
	public int connectiondelay(String airline) {
		List<Connection_DelayDTO> connlistDelay = aservice.findcon_delay();
		int result = 0;
		for(int i=0; i<connlistDelay.size();i++) {
			if(connlistDelay.get(i).get_id().equals(airline)) {
				result = connlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	public int conditiondelay(int date) {
		List<Condition_DelayDTO> condlistDelay = aservice.findcond_delay();
		int result = 0;
		for(int i=0; i<condlistDelay.size();i++) {
			if(condlistDelay.get(i).get_id()==date) {
				result = condlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	public int complexdelay(String time) {
		List<Complex_DelayDTO> comlistDelay = aservice.findcom_delay();
		int result = 0;
		for(int i=0; i<comlistDelay.size();i++){
			if(comlistDelay.get(i).get_id().equals(time)) {
				result = comlistDelay.get(i).getValue();
			}
		}
		return result;
	}
	
	private int repairdelay(String flight) {
		List<Repair_DelayDTO> relistDelay = aservice.findre_delay();
		int result = 0;
		for(int i=0; i<relistDelay.size();i++){
			if(relistDelay.get(i).get_id().equals(flight)) {
				result = relistDelay.get(i).getValue();
			}
		}
		return result;
	}*/
}
