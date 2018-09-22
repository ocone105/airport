package erp.pf.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.pf.DTO.PFDTO;
import erp.pf.DTO.PFINFODTO;
import erp.pf.DTO.PFTEAMDTO;

@Repository
public class PFDAOImpl implements PFDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<PFINFODTO> pfinfolist() {
		return sqlSession.selectList("kr.airport.erp.pf.pfinfolist");
	}
	
	@Override
	public List<PFTEAMDTO> pfteamlist() {
		return sqlSession.selectList("kr.airport.erp.pf.pfteamlist");
	}
	
	@Override
	public String pfteamlist(int pfinfono) {
		return sqlSession.selectOne("kr.airport.erp.pf.getmgr", pfinfono);
	}
	
	@Override
	public List<PFDTO> pflist() {
		return sqlSession.selectList("kr.airport.erp.pf.pflist");
	}

	

}
