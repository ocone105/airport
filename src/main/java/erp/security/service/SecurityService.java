package erp.security.service;

import erp.security.dto.SecurityDTO;

public interface SecurityService {
	void securityinsert(SecurityDTO sec);
	SecurityDTO secCheck(int empno);

}
