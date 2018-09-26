package erp.pf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.board.DAO.BoardNoticeDAO;
import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;
import erp.pf.DAO.PFDAO;
import erp.pf.DTO.PFDTO;
@Service
public class PFServiceImpl implements PFService {
	
	@Autowired
	PFDAO dao;
	
	@Override
	public List<PFDTO> pflist() {
		return dao.pflist();
	}

}
