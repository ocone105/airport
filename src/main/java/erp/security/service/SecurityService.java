package erp.security.service;

import java.util.List;

import erp.security.dto.SecurityDTO;

public interface SecurityService {
	void securityinsert(SecurityDTO sec);
	SecurityDTO secCheck(int empno);
	void reapply(SecurityDTO sec);
	List<SecurityDTO> permitlist();
	List<SecurityDTO> passlist();
	void permit(String scno);
	void reject(String scno);
	void expire(String scno);

}
