package erp.pf.DTO;

import java.sql.Date;

public class PFDTO {
	private int pfno;		
	private int pfinfono;
	private Date pfdate;
	private String pftxt;
	private int pfstaff;
	private String deptno;

	public PFDTO() {}

	public PFDTO(int pfno, int pfinfono, Date pfdate, String pftxt, int pfstaff, String deptno) {
		super();
		this.pfno = pfno;
		this.pfinfono = pfinfono;
		this.pfdate = pfdate;
		this.pftxt = pftxt;
		this.pfstaff = pfstaff;
		this.deptno = deptno;
	}

	@Override
	public String toString() {
		return "PFDTO [pfno=" + pfno + ", pfinfono=" + pfinfono + ", pfdate=" + pfdate + ", pftxt=" + pftxt
				+ ", pfstaff=" + pfstaff + ", deptno=" + deptno + "]";
	}

	public int getPfno() {
		return pfno;
	}

	public void setPfno(int pfno) {
		this.pfno = pfno;
	}

	public int getPfinfono() {
		return pfinfono;
	}

	public void setPfinfono(int pfinfono) {
		this.pfinfono = pfinfono;
	}

	public Date getPfdate() {
		return pfdate;
	}

	public void setPfdate(Date pfdate) {
		this.pfdate = pfdate;
	}

	public String getPftxt() {
		return pftxt;
	}

	public void setPftxt(String pftxt) {
		this.pftxt = pftxt;
	}

	public int getPfstaff() {
		return pfstaff;
	}

	public void setPfstaff(int pfstaff) {
		this.pfstaff = pfstaff;
	}

	public String getDeptno() {
		return deptno;
	}

	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}

}
