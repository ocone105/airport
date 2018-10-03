package main.realtime.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import main.realtime.api.FlightDTO;
import main.realtime.api.MyFlightDTO;
import main.realtime.dto.airportcodeDTO;
@Repository
public class realtimeDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<airportcodeDTO> realtime(String name){
		return sqlSession.selectList("kr.airport.main.realtime.airportcode", name);
	}

	public int myflight1(MyFlightDTO myflight) {
		return sqlSession.insert("kr.airport.main.realtime.myflight1", myflight);
	}
	
	public List<MyFlightDTO> myflight2(String id){
		return sqlSession.selectList("kr.airport.main.realtime.myflight2", id);
	}
}
 