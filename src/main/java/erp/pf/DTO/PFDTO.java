package erp.pf.DTO;

import java.sql.Date;

public class PFDTO {
	private int pfno;		
	private int pfinfono;
	private Date pfdate;
	private String pftxt;
	private int pfstaff;
	private String deptno;

	private String pfloc;
	private String pfname;
	
	public PFDTO() {}

	public PFDTO(int pfno, int pfinfono, Date pfdate, String pftxt, int pfstaff, String deptno, String pfloc,
			String pfname) {
		super();
		this.pfno = pfno;
		this.pfinfono = pfinfono;
		this.pfdate = pfdate;
		this.pftxt = pftxt;
		this.pfstaff = pfstaff;
		this.deptno = deptno;
		this.pfloc = pfloc;
		this.pfname = pfname;
	}

	@Override
	public String toString() {
		return "PFDTO [pfno=" + pfno + ", pfinfono=" + pfinfono + ", pfdate=" + pfdate + ", pftxt=" + pftxt
				+ ", pfstaff=" + pfstaff + ", deptno=" + deptno + ", pfloc=" + pfloc + ", pfname=" + pfname + "]";
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

	public String getPfloc() {
		return pfloc;
	}

	public void setPfloc(String pfloc) {
		this.pfloc = pfloc;
	}

	public String getPfname() {
		return pfname;
	}

	public void setPfname(String pfname) {
		this.pfname = pfname;
	}
	
}
