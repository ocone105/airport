package main.PF.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.PF.dao.AirlineDAO;
import main.PF.dto.complex.ComplexDTO;
import main.PF.dto.complex.Complex_CancelDTO;
import main.PF.dto.complex.Complex_DelayDTO;
import main.PF.dto.condition.ConditionDTO;
import main.PF.dto.condition.Condition_CancelDTO;
import main.PF.dto.condition.Condition_DelayDTO;
import main.PF.dto.connection.ConnectionDTO;
import main.PF.dto.connection.Connection_CancelDTO;
import main.PF.dto.connection.Connection_DelayDTO;
import main.PF.dto.main.Main_CancelDTO;
import main.PF.dto.main.Main_DelayDTO;
import main.PF.dto.repair.RepairDTO;
import main.PF.dto.repair.Repair_CancelDTO;
import main.PF.dto.repair.Repair_DelayDTO;

@Service
public class AirlineServiceImpl implements AirlineService {
	@Autowired
	AirlineDAO dao;

	@Override
	public List<ConnectionDTO> findcon() {
		return dao.findcon();
	}

	@Override
	public List<Connection_CancelDTO> findcon_cancel() {
		return dao.findcon_cancel();
	}

	@Override
	public List<Connection_DelayDTO> findcon_delay() {
		return dao.findcon_delay();
	}
	

	@Override
	public List<RepairDTO> findre() {
		return dao.findre();
	}

	@Override
	public List<Repair_CancelDTO> findre_cancel() {
		return dao.findre_cancel();
	}

	@Override
	public List<Repair_DelayDTO> findre_delay() {
		return dao.findre_delay();
	}

	@Override
	public List<ComplexDTO> findcom() {
		return dao.findcom();
	}

	@Override
	public List<Complex_CancelDTO> findcom_cancel() {
		return dao.findcom_cancel();
	}

	@Override
	public List<Complex_DelayDTO> findcom_delay() {
		return dao.findcom_delay();
	}

	@Override
	public List<ConditionDTO> findcond() {
		return dao.findcond();
	}

	@Override
	public List<Condition_CancelDTO> findcond_cancel() {
		return dao.findcond_cancel();
	}

	@Override
	public List<Condition_DelayDTO> findcond_delay() {
		return dao.findcond_delay();
	}

	@Override
	public List<Main_CancelDTO> findmain_cancel() {
		return dao.findmain_cancel();
	}

	@Override
	public List<Main_DelayDTO> findmain_delay() {
		return dao.findmain_delay();
	}

}
