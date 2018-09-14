package erp.insa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import erp.dept.dto.DeptDTO;
import erp.insa.dao.InsaDAO;
import erp.insa.dto.InsaDTO;

@Service
public class InsaServiceImpl implements InsaService {

	@Autowired
	@Qualifier("insadao")
	InsaDAO dao;

	@Override
	public List<InsaDTO> insaList() {
		// TODO Auto-generated method stub
		return dao.insaList();
	}

	@Override
	public void insainsert(InsaDTO member) {
		dao.insainsert(member);
		
	}

	@Override
	public void insachange(InsaDTO member) {
		dao.insachange(member);
		
	}

	@Override
	public void insaupdate(InsaDTO member) {
		dao.insaupdate(member);
	}

}
