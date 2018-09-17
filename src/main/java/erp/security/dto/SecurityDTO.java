package erp.security.dto;

import java.sql.Date;

public class SecurityDTO {
	int scno;
	int empno;
	String img;
	Date appdate;
	Date issuedate;
	String exdate;
	String scstate;
	
	public SecurityDTO(){}
	public SecurityDTO(int scno, int empno, String img, Date appdate, Date issuedate, String exdate, String scstate) {
		super();
		this.scno = scno;
		this.empno = empno;
		this.img = img;
		this.appdate = appdate;
		this.issuedate = issuedate;
		this.exdate = exdate;
		this.scstate = scstate;
	}
	
	@Override
	public String toString() {
		return "SecurityDTO [scno=" + scno + ", empno=" + empno + ", img=" + img + ", appdate=" + appdate
				+ ", issuedate=" + issuedate + ", exdate=" + exdate + ", scstate=" + scstate + "]";
	}

	public int getScno() {
		return scno;
	}
	public void setScno(int scno) {
		this.scno = scno;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getAppdate() {
		return appdate;
	}
	public void setAppdate(Date appdate) {
		this.appdate = appdate;
	}
	public Date getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(Date issuedate) {
		this.issuedate = issuedate;
	}
	public String getExdate() {
		return exdate;
	}
	public void setExdate(String exdate) {
		this.exdate = exdate;
	}
	public String getScstate() {
		return scstate;
	}
	public void setScstate(String scstate) {
		this.scstate = scstate;
	}
	
}
