package erp.dept.service;

import java.util.List;

import erp.dept.dto.DeptDTO;

public interface DeptService {
	List<DeptDTO> deptList();
	void deptinsert(DeptDTO dept); 
	void deptdelete(String deptno);
	void deptupdate(DeptDTO dept);
	
	List<DeptDTO> getctg2(String deptctg1);
	List<DeptDTO> getctg3(String deptctg2);
}
