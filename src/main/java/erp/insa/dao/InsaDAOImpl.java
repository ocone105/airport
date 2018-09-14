package erp.insa.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.dept.dto.DeptDTO;
import erp.insa.dto.InsaDTO;

@Repository("insadao")
public class InsaDAOImpl implements InsaDAO {
	@Autowired
	SqlSession sqlSession;


	@Override
	public List<InsaDTO> insaList() {
		return sqlSession.selectList("kr.airport.erp.insa.emplist");
	}

	@Override
	public void insainsert(InsaDTO member) {
		sqlSession.insert("kr.airport.erp.insa.empinsert", member);
		
	}

	@Override
	public void insachange(InsaDTO member) {
		sqlSession.update("kr.airport.erp.insa.empchange", member);
	}

	@Override
	public void insaupdate(InsaDTO member) {
		sqlSession.update("kr.airport.erp.insa.empupdate", member);
		
	}

	
}
