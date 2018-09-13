package erp.dept.service;

import java.util.ArrayList;
import java.util.List;

import erp.dept.dto.DeptDTO;

public interface BoardService {
	List<DeptDTO> deptList();
	void deptinsert(DeptDTO dept);
	void deptdelete(String deptno);
	void deptupdate(DeptDTO dept);
}
