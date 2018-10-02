package main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import main.dto.airportcodeDTO;
@Repository
public class realtimeDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<airportcodeDTO> realtime(String name){
		return sqlSession.selectList("kr.airport.main.realtime.airportcode", name);
	}

}
 