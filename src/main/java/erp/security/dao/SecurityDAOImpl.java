package erp.security.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("securitydao")
public class SecurityDAOImpl implements SecurityDAO {
	@Autowired
	SqlSession sqlSession;
	
}
