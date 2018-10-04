package erp.pf.service;

import java.util.List;

import erp.dept.dto.DeptDTO;
import erp.pf.DTO.PFDTO;
import erp.pf.DTO.PFINFODTO;
import erp.pf.DTO.PFTEAMDTO;

public interface PFService {
	
	List<PFINFODTO> pfinfolist();
	PFINFODTO getPfinfo(int pfinfono);
	List<PFTEAMDTO> pfteamlist();
	PFTEAMDTO pfteamlist(int pfinfono);
	List<Integer> pflist();
	List<PFDTO> pflist(int pfinfono);
	int pfinsert(PFDTO pf);
	int requestPermit(PFTEAMDTO pfteam);
	
	DeptDTO getDept(String pfname);
	DeptDTO dept(String deptname);
}
