package erp.security.dao;

import java.util.List;

import erp.security.dto.SecurityDTO;

public interface SecurityDAO {
	void securityinsert(SecurityDTO sec);
	SecurityDTO secCheck(int empno);
	void reapply(SecurityDTO sec);
	List<SecurityDTO> permitlist();
	List<SecurityDTO> passlist();
}
