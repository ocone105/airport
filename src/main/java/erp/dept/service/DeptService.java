package erp.dept.service;

import java.util.List;

import erp.dept.dto.DeptDTO;

public interface DeptService {
	DeptDTO deptread(String deptno);
	List<DeptDTO> deptList();
	List<DeptDTO> deptstepList(String deptno);
	List<DeptDTO> getByUpper(String deptno);
	String getUpcode(String deptno);
	void deptinsert(DeptDTO dept); 
	void deptdelete(String deptno);
	void deptupdate(DeptDTO dept);
}
