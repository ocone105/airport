package erp.insa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import erp.dept.dto.DeptDTO;
import erp.insa.dao.EmpDAO;
import erp.insa.dto.EmpDTO;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	@Qualifier("empdao")
	EmpDAO dao;

	@Override
	public List<EmpDTO> empList() {
		return dao.empList();
	}
	@Override
	public EmpDTO empread(int empno) {
		return dao.empread(empno);
	}
	

	@Override
	public void empinsert(EmpDTO emp) {
		dao.empinsert(emp);
		
	}


	@Override
	public void empupdate(EmpDTO emp) {
		dao.empupdate(emp);
	}

	@Override
	public void empdelete(int empno) {
		dao.empdelete(empno);
	}
	@Override
	public EmpDTO login(EmpDTO emp) {
		return dao.login(emp);
	}
	
}
