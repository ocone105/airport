package erp.pf.DAO;

import java.util.List;

import erp.pf.DTO.PFDTO;
import erp.pf.DTO.PFINFODTO;
import erp.pf.DTO.PFTEAMDTO;

public interface PFDAO {

	List<PFINFODTO> pfinfolist();
	List<PFTEAMDTO> pfteamlist();
	PFTEAMDTO pfteamlist(int pfinfono);
	List<PFDTO> pflist();
	int pfinsert(PFDTO pf);
}