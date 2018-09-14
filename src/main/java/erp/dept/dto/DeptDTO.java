package erp.dept.dto;

public class DeptDTO {
	String deptno;
	String deptctg1;
	String deptctg2;
	String deptctg3;
	String tel;
	String task;
	int mgr;
	
	public DeptDTO() {}
	public DeptDTO(String deptno, String deptctg1, String deptctg2, String deptctg3, String tel, String task, int mgr) {
		super();
		this.deptno = deptno;
		this.deptctg1 = deptctg1;
		this.deptctg2 = deptctg2;
		this.deptctg3 = deptctg3;
		this.tel = tel;
		this.task = task;
		this.mgr = mgr;
	}
	
	
	@Override
	public String toString() {
		return "DeptDTO [deptno=" + deptno + ", deptctg1=" + deptctg1 + ", deptctg2=" + deptctg2 + ", deptctg3="
				+ deptctg3 + ", tel=" + tel + ", task=" + task + ", mgr=" + mgr + "]";
	}
	
	public String getDeptno() {
		return deptno;
	}
	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}
	public String getDeptctg1() {
		return deptctg1;
	}
	public void setDeptctg1(String deptctg1) {
		this.deptctg1 = deptctg1;
	}
	public String getDeptctg2() {
		return deptctg2;
	}
	public void setDeptctg2(String deptctg2) {
		this.deptctg2 = deptctg2;
	}
	public String getDeptctg3() {
		return deptctg3;
	}
	public void setDeptctg3(String deptctg3) {
		this.deptctg3 = deptctg3;
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
