package erp.insa.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.insa.dto.EmpDTO;

@Repository("empdao")
public class EmpDAOImpl implements EmpDAO {
	@Autowired
	SqlSession sqlSession;


	@Override
	public List<EmpDTO> empList() {
		return sqlSession.selectList("kr.airport.erp.insa.emplist");
	}

	@Override
	public EmpDTO empread(int empno) {
		return sqlSession.selectOne("kr.airport.erp.insa.empread", empno);
	}

	
	@Override
	public void empinsert(EmpDTO emp) {
		sqlSession.insert("kr.airport.erp.insa.empinsert", emp);
		
	}

	@Override
	public void empupdate(EmpDTO emp) {
		sqlSession.update("kr.airport.erp.insa.empupdate", emp);
		
	}

	@Override
	public void empdelete(int empno) {
		sqlSession.update("kr.airport.erp.insa.empdelete", empno);
	}

	@Override
	public EmpDTO login(EmpDTO emp) {
		return sqlSession.selectOne("kr.airport.erp.insa.login", emp);
	}

	
	
}
