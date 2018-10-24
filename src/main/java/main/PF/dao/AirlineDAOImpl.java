package main.PF.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

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
import main.PF.repository.ComplexRepository;
import main.PF.repository.Complex_CancelRepository;
import main.PF.repository.Complex_DelayRepository;
import main.PF.repository.ConditionRepository;
import main.PF.repository.Condition_CancelRepository;
import main.PF.repository.Condition_DelayRepository;
import main.PF.repository.ConnectionRepository;
import main.PF.repository.Connection_CancelRepository;
import main.PF.repository.Connection_DelayRepository;
import main.PF.repository.Main_CancelRepository;
import main.PF.repository.Main_DelayRepository;
import main.PF.repository.RepairRepository;
import main.PF.repository.Repair_CancelRepository;
import main.PF.repository.Repair_DelayRepository;

//Repository와 MongoTemplate을 이용해서 mongodb에 액세스
@Repository
public class AirlineDAOImpl implements AirlineDAO {
	@Autowired
	MongoTemplate mongoTemplate;
	
	@Autowired
	ConnectionRepository conRe;
	@Autowired
	Connection_CancelRepository concanRe;
	@Autowired
	Connection_DelayRepository condeRe;
	
	@Autowired
	RepairRepository reRe;
	@Autowired
	Repair_CancelRepository recanRe;
	@Autowired
	Repair_DelayRepository redeRe;
	
	@Autowired
	ComplexRepository comRe;
	@Autowired
	Complex_CancelRepository comcanRe;
	@Autowired
	Complex_DelayRepository comdeRe;
	
	@Autowired
	ConditionRepository condRe;
	@Autowired
	Condition_CancelRepository condcanRe;
	@Autowired
	Condition_DelayRepository conddeRe;
	
	@Autowired
	Main_CancelRepository maincanRe;
	@Autowired
	Main_DelayRepository mainddeRe;


	@Override
	public List<ConnectionDTO> findcon() {
		List<ConnectionDTO> docs = (List<ConnectionDTO>) conRe.findAll();
		return docs;
	}

	@Override
	public List<Connection_CancelDTO> findcon_cancel() {
		List<Connection_CancelDTO> docs = (List<Connection_CancelDTO>) concanRe.findAll();
		return docs;
	}

	@Override
	public List<Connection_DelayDTO> findcon_delay() {
		List<Connection_DelayDTO> docs = (List<Connection_DelayDTO>) condeRe.findAll();
		return docs;
	}

	@Override
	public List<RepairDTO> findre() {
		List<RepairDTO> docs = (List<RepairDTO>) reRe.findAll();
		return docs;
	}

	@Override
	public List<Repair_CancelDTO> findre_cancel() {
		List<Repair_CancelDTO> docs = (List<Repair_CancelDTO>) recanRe.findAll();
		return docs;
	}

	@Override
	public List<Repair_DelayDTO> findre_delay() {
		List<Repair_DelayDTO> docs = (List<Repair_DelayDTO>) redeRe.findAll();
		return docs;
	}

	@Override
	public List<ComplexDTO> findcom() {
		List<ComplexDTO> docs = (List<ComplexDTO>) comRe.findAll();
		return docs;
	}

	@Override
	public List<Complex_CancelDTO> findcom_cancel() {
		List<Complex_CancelDTO> docs = (List<Complex_CancelDTO>) comcanRe.findAll();
		return docs;
	}

	@Override
	public List<Complex_DelayDTO> findcom_delay() {
		List<Complex_DelayDTO> docs = (List<Complex_DelayDTO>) comdeRe.findAll();
		return docs;
	}

	@Override
	public List<ConditionDTO> findcond() {
		List<ConditionDTO> docs = (List<ConditionDTO>) condRe.findAll();
		return docs;
	}

	@Override
	public List<Condition_CancelDTO> findcond_cancel() {
		List<Condition_CancelDTO> docs = (List<Condition_CancelDTO>) condcanRe.findAll();
		return docs;
	}

	@Override
	public List<Condition_DelayDTO> findcond_delay() {
		 List<Condition_DelayDTO> docs = (List<Condition_DelayDTO>) conddeRe.findAll();
		return docs;
	}

	@Override
	public List<Main_CancelDTO> findmain_cancel() {
		List<Main_CancelDTO> docs = (List<Main_CancelDTO>) maincanRe.findAll();
		return docs;
	}

	@Override
	public List<Main_DelayDTO> findmain_delay() {
		List<Main_DelayDTO> docs = (List<Main_DelayDTO>) mainddeRe.findAll();
		return docs;
	}
	
}
