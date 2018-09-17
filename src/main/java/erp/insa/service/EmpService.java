package erp.insa.service;

import java.util.List;

import erp.insa.dto.EmpDTO;

public interface EmpService {
	List<EmpDTO> empList();
	EmpDTO empread(int empno);
	void empinsert(EmpDTO emp);
	void empupdate(EmpDTO emp);
	void empdelete(int empno);
	EmpDTO login(EmpDTO emp);
}
