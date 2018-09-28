package erp.pf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.pf.DAO.PFDAO;
import erp.pf.DTO.PFDTO;
import erp.pf.DTO.PFINFODTO;
import erp.pf.DTO.PFTEAMDTO;
@Service
public class PFServiceImpl implements PFService {
	
	@Autowired
	PFDAO dao;
	
	@Override
	public List<PFINFODTO> pfinfolist() {
		return dao.pfinfolist();
	}

	@Override
	public List<PFTEAMDTO> pfteamlist() {
		return dao.pfteamlist();
	}
	
	@Override
	public PFTEAMDTO pfteamlist(int pfinfono) {
		return dao.pfteamlist(pfinfono);
	}

	@Override
	public List<PFDTO> pflist() {
		return dao.pflist();
	}

	@Override
	public int pfinsert(PFDTO pf) {
		return dao.pfinsert(pf);
	}

}
