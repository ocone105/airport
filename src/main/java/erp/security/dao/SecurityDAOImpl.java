package erp.security.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.insa.dto.EmpDTO;
import erp.security.dto.SecurityDTO;

@Repository("securitydao")
public class SecurityDAOImpl implements SecurityDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public void securityinsert(SecurityDTO sec) {
		sqlSession.insert("kr.airport.erp.security.secinsert", sec);
	}

	@Override
	public SecurityDTO secCheck(int empno) {
		return sqlSession.selectOne("kr.airport.erp.security.seccheck", empno);
	}
	@Override
	public SecurityDTO secread(String scno) {
		return sqlSession.selectOne("kr.airport.erp.security.secread", scno);
	}
	@Override
	public void reapply(SecurityDTO sec) {
		sqlSession.update("kr.airport.erp.security.reapply", sec);
	}

	@Override
	public List<SecurityDTO> permitlist() {
		return sqlSession.selectList("kr.airport.erp.security.secpermitlist");
	}

	@Override
	public List<SecurityDTO> passlist() {
		return sqlSession.selectList("kr.airport.erp.security.passlist");
	}

	@Override
	public void permit(String scno) {
		sqlSession.update("kr.airport.erp.security.permit", scno);
	}

	@Override
	public void reject(String scno) {
		sqlSession.update("kr.airport.erp.security.reject", scno);
		
	}

	@Override
	public void expire(String scno) {
		sqlSession.update("kr.airport.erp.security.expire", scno);
		
	}

	@Override
	public void delete(int empno) {
		sqlSession.delete("kr.airport.erp.security.delete", empno);
	}

	@Override
	public List<SecurityDTO> passsearch(String tag, String search) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("search", search);
		return sqlSession.selectList("kr.airport.erp.security.passsearch", map);
	}

}
