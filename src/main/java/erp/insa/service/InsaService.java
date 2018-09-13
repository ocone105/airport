package erp.insa.service;

import java.util.List;

import erp.dept.dto.DeptDTO;
import erp.insa.dto.InsaDTO;

public interface InsaService {
	List<InsaDTO> insaList();
	void insainsert(InsaDTO member);
	void insachange(InsaDTO member);
	void insaupdate(InsaDTO member);
}
