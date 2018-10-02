package main.PF.service;

import java.util.List;

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

public interface AirlineService {

	public List<ConnectionDTO> findcon();
	public List<Connection_CancelDTO> findcon_cancel();
	public List<Connection_DelayDTO> findcon_delay();

	public List<RepairDTO> findre();
	public List<Repair_CancelDTO> findre_cancel();
	public List<Repair_DelayDTO> findre_delay();
	
	public List<ComplexDTO> findcom();
	public List<Complex_CancelDTO> findcom_cancel();
	public List<Complex_DelayDTO> findcom_delay();
	
	public List<ConditionDTO> findcond();
	public List<Condition_CancelDTO> findcond_cancel();
	public List<Condition_DelayDTO> findcond_delay();
}
