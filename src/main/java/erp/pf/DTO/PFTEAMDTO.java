package erp.pf.DTO;

public class PFTEAMDTO {
	private int pfinfono;
	private String deptno;
	private int currentstaff;
	
	public PFTEAMDTO() {}

	public PFTEAMDTO(int pfinfono, String deptno, int currentstaff) {
		super();
		this.pfinfono = pfinfono;
		this.deptno = deptno;
		this.currentstaff = currentstaff;
	}

	@Override
	public String toString() {
		return "PFTEAMDTO [pfinfono=" + pfinfono + ", deptno=" + deptno + ", currentstaff=" + currentstaff + "]";
	}

	public int getPfinfono() {
		return pfinfono;
	}

	public void setPfinfono(int pfinfono) {
		this.pfinfono = pfinfono;
	}

	public String getDeptno() {
		return deptno;
	}

	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}

	public int getCurrentstaff() {
		return currentstaff;
	}

	public void setCurrentstaff(int currentstaff) {
		this.currentstaff = currentstaff;
	}
	
}
