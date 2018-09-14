package erp.insa.dao;

import java.util.List;

import erp.dept.dto.DeptDTO;
import erp.insa.dto.InsaDTO;

public interface InsaDAO {
	List<InsaDTO> insaList();
	void insainsert(InsaDTO member);
	void insachange(InsaDTO member);
	void insaupdate(InsaDTO member);
	
}
