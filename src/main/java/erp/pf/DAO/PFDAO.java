package erp.pf.DAO;

import java.util.List;

import erp.dept.dto.DeptDTO;
import erp.pf.DTO.PFDTO;
import erp.pf.DTO.PFINFODTO;
import erp.pf.DTO.PFTEAMDTO;

public interface PFDAO {

	List<PFINFODTO> pfinfolist();
	PFINFODTO getPfinfo(int pfinfono);
	List<PFTEAMDTO> pfteamlist();
	PFTEAMDTO pfteamlist(int pfinfono);
	List<PFDTO> pflist(int pfinfono);
	List<Integer> pflist();
	int pfinsert(PFDTO pf);
	int requestPermit(int pfno);
	
	// 부서명, 매니저 
	DeptDTO getDept(String pfname);
	DeptDTO dept(String deptname);
}