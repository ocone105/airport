package erp.pf.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.dept.dto.DeptDTO;
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
	public PFINFODTO getPfinfo(int pfinfono) {
		return sqlSession.selectOne("kr.airport.erp.pf.getPfinfo", pfinfono);
	}
	@Override
	public List<PFTEAMDTO> pfteamlist() {
		return sqlSession.selectList("kr.airport.erp.pf.pfteamlist");
	}
	
	@Override
	public PFTEAMDTO pfteamlist(int pfinfono) {
		return sqlSession.selectOne("kr.airport.erp.pf.pfteam", pfinfono);
	}
	
	@Override
	public List<PFDTO> pflist(int pfinfono) {
		return sqlSession.selectList("kr.airport.erp.pf.pflist", pfinfono);
	}

	@Override
	public List<Integer> pflist() {
		return sqlSession.selectList("kr.airport.erp.pf.pflist2");
	}
	
	@Override
	public int pfinsert(PFDTO pf) {
		return sqlSession.insert("kr.airport.erp.pf.request", pf);
	}

	@Override
	public DeptDTO getDept(String pfname) {
		return sqlSession.selectOne("kr.airport.erp.pf.getDept", pfname);
	}

	@Override
	public DeptDTO dept(String deptname) {
		return sqlSession.selectOne("kr.airport.erp.pf.dept", deptname);
	}

	@Override
	public int requestPermit(PFTEAMDTO pfteam) {
		sqlSession.update("kr.airport.erp.pf.requestPermit1", pfteam);
		sqlSession.update("kr.airport.erp.pf.requestPermit2", pfteam.getDeptno());
		return 0;
	}

}
