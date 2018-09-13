package erp.dept.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.dept.dto.DeptDTO;

@Repository("deptdao")
public class DeptDAOImpl implements DeptDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<DeptDTO> deptList() {
		return sqlSession.selectList("kr.airport.erp.dept.deptlist");
	}

	@Override
	public void deptinsert(DeptDTO dept) {
		sqlSession.insert("kr.airport.erp.dept.deptinsert", dept);
		
	}


	@Override
	public void deptdelete(String deptno) {
		sqlSession.delete("kr.airport.erp.dept.deptdelete", deptno);
		
	}

	@Override
	public void deptupdate(DeptDTO dept) {
		sqlSession.update("kr.airport.erp.dept.deptupdate", dept);
		
	}
	
}
