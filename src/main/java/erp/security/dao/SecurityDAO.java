package erp.security.dao;

import erp.security.dto.SecurityDTO;

public interface SecurityDAO {
	void securityinsert(SecurityDTO sec);
	SecurityDTO secCheck(int empno);
}
