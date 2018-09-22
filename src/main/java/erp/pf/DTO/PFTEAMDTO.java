package erp.pf.DTO;

public class PFTEAMDTO {
	private int pfinfono;
	private String deptno;
	
	public PFTEAMDTO() {}

	public PFTEAMDTO(int pfinfono, String deptno) {
		super();
		this.pfinfono = pfinfono;
		this.deptno = deptno;
	}

	@Override
	public String toString() {
		return "PFTEAMDTO [pfinfono=" + pfinfono + ", deptno=" + deptno + "]";
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
	
}
