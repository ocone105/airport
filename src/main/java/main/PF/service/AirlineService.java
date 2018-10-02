package main.PF.service;

import java.util.List;

import main.PF.dto.connection.ConnectionDTO;
import main.PF.dto.connection.Connection_CancelDTO;
import main.PF.dto.connection.Connection_DelayDTO;

public interface AirlineService {
/*	public ScoreDTO findById(String key,String value);
	public void insertDocument(ScoreDTO doc);
	public void insertAllDocument(List<ScoreDTO> docs);
	public List<ScoreDTO> findCriteria(String key,String value);
	public void update(ScoreDTO document);
	public void test1();
	
	public List<ScoreDTO> findAll();
	public List<ScoreDTO> findAll(int pageNo);*/
	
	public List<ConnectionDTO> findcon();
	public List<Connection_CancelDTO> findcon_cancel();
	public List<Connection_DelayDTO> findcon_delay();
}
