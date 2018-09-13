package erp.dept.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import erp.dept.dao.DeptDAO;
import erp.dept.dto.DeptDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	@Qualifier("deptdao")
	DeptDAO dao;

	@Override
	public List<DeptDTO> deptList() {
		return dao.deptList();
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

}
