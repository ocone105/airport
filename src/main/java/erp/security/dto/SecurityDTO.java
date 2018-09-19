package erp.security.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class SecurityDTO {
	String scno;
	int empno;
	String img;
	String appdate;
	Date issuedate;
	Date exdate;
	String scstate;
	MultipartFile upfile;
	
	String name;
	String deptname;
	String email;
	
	public SecurityDTO(){}
	public SecurityDTO(String scno, int empno, String img, String appdate, Date issuedate, Date exdate, String scstate) {
		super();
		this.scno = scno;
		this.empno = empno;
		this.img = img;
		this.appdate = appdate;
		this.issuedate = issuedate;
		this.exdate = exdate;
		this.scstate = scstate;
	}
	
	//파일업로드용
	public SecurityDTO(String scno, int empno, String img, String appdate, Date issuedate, Date exdate, String scstate,
			MultipartFile upfile) {
		super();
		this.scno = scno;
		this.empno = empno;
		this.img = img;
		this.appdate = appdate;
		this.issuedate = issuedate;
		this.exdate = exdate;
		this.scstate = scstate;
		this.upfile = upfile;
	}
	
	//permitlist select용
	public SecurityDTO(String scno, int empno, String img, String appdate, Date issuedate, Date exdate, String scstate,
			MultipartFile upfile, String name, String deptname, String email) {
		super();
		this.scno = scno;
		this.empno = empno;
		this.img = img;
		this.appdate = appdate;
		this.issuedate = issuedate;
		this.exdate = exdate;
		this.scstate = scstate;
		this.upfile = upfile;
		this.name = name;
		this.deptname = deptname;
		this.email = email;
	}
	@Override
	public String toString() {
		return "SecurityDTO [scno=" + scno + ", empno=" + empno + ", img=" + img + ", appdate=" + appdate
				+ ", issuedate=" + issuedate + ", exdate=" + exdate + ", scstate=" + scstate + "]";
	}

	public String getScno() {
		return scno;
	}
	public void setScno(String scno) {
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
	public String getAppdate() {
		return appdate;
	}
	public void setAppdate(String appdate) {
		this.appdate = appdate;
	}
	public Date getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(Date issuedate) {
		this.issuedate = issuedate;
	}
	public Date getExdate() {
		return exdate;
	}
	public void setExdate(Date exdate) {
		this.exdate = exdate;
	}
	public String getScstate() {
		return scstate;
	}
	public void setScstate(String scstate) {
		this.scstate = scstate;
	}
	public MultipartFile getUpfile() {
		return upfile;
	}
	public void setUpfile(MultipartFile upfile) {
		this.upfile = upfile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
