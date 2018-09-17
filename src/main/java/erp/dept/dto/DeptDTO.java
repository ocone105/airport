package erp.dept.dto;

public class DeptDTO {
	String deptno;
	String deptname;
	int deptstep;
	String uppercode;
	String tel;
	String task;
	int mgr;
	
	public DeptDTO() {}
	public DeptDTO(String deptno, String deptname, int deptstep, String uppercode, String tel, String task, int mgr) {
		super();
		this.deptno = deptno;
		this.deptname = deptname;
		this.deptstep = deptstep;
		this.uppercode = uppercode;
		this.tel = tel;
		this.task = task;
		this.mgr = mgr;
	}
	
	@Override
	public String toString() {
		return "DeptDTO [deptno=" + deptno + ", deptname=" + deptname + ", deptstep=" + deptstep + ", uppercode="
				+ uppercode + ", tel=" + tel + ", task=" + task + ", mgr=" + mgr + "]";
	}
	public String getDeptno() {
		return deptno;
	}
	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public int getDeptstep() {
		return deptstep;
	}
	public void setDeptstep(int deptstep) {
		this.deptstep = deptstep;
	}
	public String getUppercode() {
		return uppercode;
	}
	public void setUppercode(String uppercode) {
		this.uppercode = uppercode;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public int getMgr() {
		return mgr;
	}
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	
}
