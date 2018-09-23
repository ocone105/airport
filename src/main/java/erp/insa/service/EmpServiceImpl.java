package erp.insa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import erp.dept.dto.DeptDTO;
import erp.insa.dao.EmpDAO;
import erp.insa.dto.EmpDTO;
import erp.security.dao.SecurityDAO;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	@Qualifier("empdao")
	EmpDAO empdao;
	@Autowired
	@Qualifier("securitydao")
	SecurityDAO secdao;

	@Override
	public List<EmpDTO> empList() {
		return empdao.empList();
	}
	@Override
	public EmpDTO empread(int empno) {
		return empdao.empread(empno);
	}
	

	@Override
	public void empinsert(EmpDTO emp) {
		empdao.empinsert(emp);
		
	}


	@Override
	public void empupdate(EmpDTO emp) {
		empdao.empupdate(emp);
	}

	@Override
	public void trdelete(int empno) {
		empdao.empdelete(empno);
		secdao.delete(empno);
	}
	@Override
	public EmpDTO login(EmpDTO emp) {
		return empdao.login(emp);
	}
	
}
