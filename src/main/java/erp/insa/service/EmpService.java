package erp.insa.service;

import java.util.List;

import erp.insa.dto.EmpDTO;

public interface EmpService {
	List<EmpDTO> empList();
	EmpDTO empread(int empno);
	void empinsert(EmpDTO emp);
	void empupdate(EmpDTO emp);
	void trdelete(int empno);
	EmpDTO login(EmpDTO emp);
	void empserviceupdate(EmpDTO emp);
	List<EmpDTO> empsearch(String tag,String search);
	boolean idCheck(String empid);
}
