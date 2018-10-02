package main.PF.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.PF.dao.AirlineDAO;
import main.PF.dto.connection.ConnectionDTO;
import main.PF.dto.connection.Connection_CancelDTO;
import main.PF.dto.connection.Connection_DelayDTO;

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Connection_DelayDTO> findcon_delay() {
		// TODO Auto-generated method stub
		return null;
	}
/*	@Autowired
	ScoreMongoDAO dao;
	
	@Override
	public ScoreDTO findById(String key, String value) {
		return dao.findById(key, value);
	}

	@Override
	public void insertDocument(ScoreDTO doc) {
		dao.insertDocument(doc);
	}

	@Override
	public void insertAllDocument(List<ScoreDTO> docs) {
		dao.insertAllDocument(docs);
	}

	@Override
	public List<ScoreDTO> findCriteria(String key, String value) {
		return dao.findCriteria(key, value);
	}

	@Override
	public void update(ScoreDTO document) {
		dao.update(document);
	}

	@Override
	public void test1() {

	}

	@Override
	public List<ScoreDTO> findAll() {
		return dao.findAll();
	}

	@Override
	public List<ScoreDTO> findAll(int pageNo) {
		return dao.findAll(pageNo);
	}*/

}
