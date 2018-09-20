package erp.pf.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.pf.DTO.PFDTO;

@Repository
public class PFDAOImpl implements PFDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<PFDTO> pflist() {
		return sqlSession.selectList("kr.airport.erp.pf.pflist");
	}

}
