package erp.pf.service;

import java.util.List;

import erp.dept.dto.DeptDTO;
import erp.pf.DTO.PFDTO;
import erp.pf.DTO.PFINFODTO;
import erp.pf.DTO.PFTEAMDTO;

public interface PFService {
	
	List<PFINFODTO> pfinfolist();
	List<PFTEAMDTO> pfteamlist();
	PFTEAMDTO pfteamlist(int pfinfono);
	List<PFDTO> pflist();
	int pfinsert(PFDTO pf);
	
	DeptDTO getDept(String pfname);
}
