package erp.security.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import erp.security.dao.SecurityDAO;
import erp.security.dto.SecurityDTO;

@Service
public class SecurityServiceImpl implements SecurityService {
	@Autowired
	@Qualifier("securitydao")
	SecurityDAO dao;

	@Override
	public void securityinsert(SecurityDTO sec) {
		dao.securityinsert(sec);
	}

	@Override
	public SecurityDTO secCheck(int empno) {
		return dao.secCheck(empno);
	}

	@Override
	public void reapply(SecurityDTO sec) {
		dao.reapply(sec);
	}

	
}
