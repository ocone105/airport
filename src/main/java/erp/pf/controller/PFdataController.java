package erp.pf.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.pf.service.PFService;
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

@Controller
public class PFdataController {
	@Autowired
	PFService service;

	@Autowired
	AirlineService airservice;

	@Autowired
	AirportMongoData amservice;
	
	@RequestMapping("/erp/datalist.do")
	public ModelAndView pfwrite() {
		
		ModelAndView mav = new ModelAndView();
		int count = 0;
		int count_de = 0;
		int count_can = 0;
		DecimalFormat df = new DecimalFormat("#.##");

		List<Double> delay = new ArrayList<Double>();
		Double reason1 = 10855.0/20257.0 * 100.0;
		reason1 = Double.parseDouble(df.format(reason1));
		delay.add(reason1);
		Double reason2 = 954.0/20257.0 * 100.0;
		reason2 = Double.parseDouble(df.format(reason2));
		delay.add(reason2);
		Double reason3 = 904.0/20257.0 * 100.0;
		reason3 = Double.parseDouble(df.format(reason3));
		delay.add(reason3);
		Double reason4 = 4171.0/20257.0 * 100.0;
		reason4 = Double.parseDouble(df.format(reason4));
		delay.add(reason4);
		Double reason5 = (double)(20257-10855-954-904-4171)/20257.0 * 100.0;
		reason5 = Double.parseDouble(df.format(reason5));
		delay.add(reason5);
		
		List<Double> cancel = new ArrayList<Double>();
		reason1 = 46.0/353.0 * 100.0;
		reason1 = Double.parseDouble(df.format(reason1));
		cancel.add(reason1);
		reason2 = 52.0/353.0 * 100.0;
		reason2 = Double.parseDouble(df.format(reason2));
		cancel.add(reason2);
		reason3 = 160.0/353.0 * 100.0;
		reason3 = Double.parseDouble(df.format(reason3));
		cancel.add(reason3);
		reason4 = 7.0/353.0 * 100.0;
		reason4 = Double.parseDouble(df.format(reason4));
		cancel.add(reason4);
		reason5 = (double)(353-46-52-160-7)/353.0 * 100.0;
		reason5 = Double.parseDouble(df.format(reason5));
		cancel.add(reason5);
		

		df = new DecimalFormat("#.####");
		
		// 전체-연결 복잡 지연,결항
		List<ConnectionDTO> data1 = airservice.findcon();
		List<Connection_DelayDTO> data1_de = airservice.findcon_delay();
		List<Connection_CancelDTO> data1_can = airservice.findcon_cancel();
		count = 0;
		for (int i = 0; i < data1.size(); i++) {
			count = count + data1.get(i).getValue();
		}
		count_de = 0;
		for (int i = 0; i < data1_de.size(); i++) {
			count_de = count_de + data1_de.get(i).getValue();
		}
		count_can = 0;
		for (int i = 0; i < data1_can.size(); i++) {
			count_can = count_can + data1_can.get(i).getValue();
		}
		double result1_1 = (double) count_de / count * 100.0;
		double result1_2 = (double) count_can / count * 100.0;
		result1_1 = Double.parseDouble(df.format(result1_1));
		result1_2 = Double.parseDouble(df.format(result1_2));
		
		
		
		// 전체-정비에 대한 지연,결항
		List<RepairDTO> data2 = airservice.findre();
		List<Repair_DelayDTO> data2_de = airservice.findre_delay();
		List<Repair_CancelDTO> data2_can = airservice.findre_cancel();
		count = 0;
		for (int i = 0; i < data2.size(); i++) {
			count = count + data2.get(i).getValue();
		}
		count_de = 0;
		for (int i = 0; i < data2_de.size(); i++) {
			count_de = count_de + data2_de.get(i).getValue();
		}
		count_can = 0;
		for (int i = 0; i < data2_can.size(); i++) {
			count_can = count_can + data2_can.get(i).getValue();
		}
		double result2_1 = (double) count_de / count * 100.0;
		double result2_2 = (double) count_can / count * 100.0;
		result2_1 = Double.parseDouble(df.format(result2_1));
		result2_2 = Double.parseDouble(df.format(result2_2));
		
		
		// 전체-기상에 대한 지연,결항
		List<ConditionDTO> data3 = airservice.findcond();
		List<Condition_DelayDTO> data3_de = airservice.findcond_delay();
		List<Condition_CancelDTO> data3_can = airservice.findcond_cancel();
		count = 0;
		for (int i = 0; i < data3.size(); i++) {
			count = count + data3.get(i).getValue();
		}
		count_de = 0;
		for (int i = 0; i < data3_de.size(); i++) {
			count_de = count_de + data3_de.get(i).getValue();
		}
		count_can = 0;
		for (int i = 0; i < data3_can.size(); i++) {
			count_can = count_can + data3_can.get(i).getValue();
		}
		double result3_1 = (double) count_de / count * 100.0;
		double result3_2 = (double) count_can / count * 100.0;
		result3_1 = Double.parseDouble(df.format(result3_1));
		result3_2 = Double.parseDouble(df.format(result3_2));
		
		
		// 전체-항로복잡 지연,결항
		List<ComplexDTO> data4 = airservice.findcom();
		List<Complex_DelayDTO> data4_de = airservice.findcom_delay();
		List<Complex_CancelDTO> data4_can = airservice.findcom_cancel();
		count = 0;
		for (int i = 0; i < data4.size(); i++) {
			count = count + data4.get(i).getValue();
		}
		count_de = 0;
		for (int i = 0; i < data4_de.size(); i++) {
			count_de = count_de + data4_de.get(i).getValue();
		}
		count_can = 0;
		for (int i = 0; i < data4_can.size(); i++) {
			count_can = count_can + data4_can.get(i).getValue();
		}
		double result4_1 = (double) count_de / count * 100.0;
		double result4_2 = (double) count_can / count * 100.0;
		result4_1 = Double.parseDouble(df.format(result4_1));
		result4_2 = Double.parseDouble(df.format(result4_2));

		// 시간-항로복잡 지연
		ArrayList<Double> comderesult = new ArrayList<Double>();
		for (int i = 0; i < 24; i++) {
			double result = 0.0;
			if (i < 12) {
				result = (double) amservice.complexDelay("0" + i) / amservice.complex("0" + i) * 100.0;
			} else {
				result = (double) amservice.complexDelay(i + "") / amservice.complex(i + "") * 100.0;
			}
			comderesult.add(result);
		}

		// 시간-항로복잡 취소
		ArrayList<Double> comcanresult = new ArrayList<Double>();
		for (int i = 0; i < 24; i++) {
			double result = 0.0;
			if (i < 12) {
				result = (double) amservice.complexCancel("0" + i) / amservice.complex("0" + i) * 100.0;
			} else {
				result = (double) amservice.complexCancel(i + "") / amservice.complex(i + "") * 100.0;
			}
			comcanresult.add(result);
		}

		mav.addObject("delay", delay);
		mav.addObject("cancel", cancel);
		mav.addObject("result1_1", result1_1);
		mav.addObject("result1_2", result1_2);
		mav.addObject("result2_1", result2_1);
		mav.addObject("result2_2", result2_2);
		mav.addObject("result3_1", result3_1);
		mav.addObject("result3_2", result3_2);
		mav.addObject("result4_1", result4_1);
		mav.addObject("result4_2", result4_2);
		mav.addObject("comderesult", comderesult);
		mav.addObject("comcanresult", comcanresult);
		mav.setViewName("erp/datalist");
		return mav;
	}
}
