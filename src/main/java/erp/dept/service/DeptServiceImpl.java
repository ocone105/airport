package erp.dept.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import erp.dept.dao.DeptDAO;
import erp.dept.dto.DeptDTO;

@Service
public class DeptServiceImpl implements DeptService {

	@Autowired
	@Qualifier("deptdao")
	DeptDAO dao;

	
	
	@Override
	public DeptDTO deptread(String deptno) {
		return dao.deptread(deptno);
	}
	
	@Override
	public List<DeptDTO> deptList() {
		return dao.deptList();
	}
	@Override
	public List<DeptDTO> deptstepList(String deptno) {
		return dao.deptstepList(deptno);
	}
	@Override
	public List<DeptDTO> getByUpper(String deptno) {
		return dao.getByUpper(deptno);
	}
	@Override
	public String getUpcode(String deptno) {
		return dao.getUpcode(deptno);
	}
	
	
	@Override
	public void deptinsert(DeptDTO dept) {
		dao.deptinsert(dept);
	}

	@Override
	public void deptdelete(String deptno) {
		dao.deptdelete(deptno);
	}

	@Override
	public void deptupdate(DeptDTO dept) {
		dao.deptupdate(dept);
	}

	@Override
	public boolean deptnoCheck(String deptno) {
		return dao.deptnoCheck(deptno);
	}


}
