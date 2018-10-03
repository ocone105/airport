package main.PF.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
@Controller
public class PFMongoController {

	@Autowired 
	AirlineService service;
	
	@RequestMapping("/main/flight.do")
	public String predictFlight() {
		int con1 = connection("대한항공");
		int con2 = connectionDelay("대한항공");
		int con3 = connectionCancel("대한항공");
		// System.out.println("항공사(연결) : "+con1+" * "+con2+" * "+con3);
		int repair1 = repair("LJ221");
		int repair2 = repairDelay("LJ221");
		int repair3 = repairCancel("OK191");
		// System.out.println("편명(정비) : "+repair1+" * "+repair2+" * "+repair3);
		int com1 = complex("09");
		int com2 = complexDelay("09");
		int com3 = complexCancel("14");
		// System.out.println("시간(혼잡) : "+com1+" * "+com2+" * "+com3);
		int cond1 = condition(20171008);
		int cond2 = conditionDelay(20171008);
		int cond3 = conditionCancel(20171223);
		// System.out.println("날짜(날씨) : "+cond1+" * "+cond2+" * "+con3);
		double result = (1 - (1 - (double)con2/con1)*(1 - (double)repair2/repair1)*(1 - (double)com2/com1)*(1 - (double)cond2/cond1));
		System.out.println("최종 결과 : "+result*100+"%");

		return "abnormalflight";
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
