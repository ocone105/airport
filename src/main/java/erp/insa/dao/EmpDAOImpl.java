package erp.insa.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public void empserviceupdate(EmpDTO emp) {
		sqlSession.update("kr.airport.erp.insa.empserviceupdate", emp);
	}

	@Override
	public List<EmpDTO> empsearch(String tag, String search) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("search", search);
		return sqlSession.selectList("kr.airport.erp.insa.empsearch", map);
	}

	@Override
	public boolean idCheck(String id) {
		boolean state = false;
		EmpDTO user = sqlSession.selectOne("kr.airport.erp.insa.idcheck", id);
		if (user != null) {
			state = true;
		}
		return state;
	}

	@Override
	public String getId(int empno) {
		return sqlSession.selectOne("kr.airport.erp.insa.getid", empno);
	}
}
