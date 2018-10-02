package erp.security.dao;

import java.util.List;

import erp.security.dto.SecurityDTO;

public interface SecurityDAO {
	void securityinsert(SecurityDTO sec);
	SecurityDTO secCheck(int empno);
	SecurityDTO secread(String scno);
	void reapply(SecurityDTO sec);
	List<SecurityDTO> permitlist();
	List<SecurityDTO> passlist();
	void permit(String scno);
	void reject(String scno);
	void expire(String scno);
	void delete(int empno);
	
	List<SecurityDTO> passsearch(String tag,String search);
	
}