package erp.security.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
}
