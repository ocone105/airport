package erp.login.authentication;

import java.sql.Date;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class EmpSecurityLoginDTO extends User {
	int empno;
	String empid;
	String pwd;
	String name;
	String birth;
	String gender;
	String phone;
	String email;
	String position;
	String state;
	Date startdate;
	Date enddate;
	String deptno;
	String role;
	String deptname;
	
	public EmpSecurityLoginDTO(String empid, String pwd, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		super(empid, pwd, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
	}

	
	
	


	public EmpSecurityLoginDTO(String empid, String pwd, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities,
			int empno, String name, String birth, String gender, String phone, String email,
			String position, String state, Date startdate, Date enddate, String deptno, String role, String deptname) {
		super(empid, pwd, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.empno = empno;
		this.empid = empid;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.position = position;
		this.state = state;
		this.startdate = startdate;
		this.enddate = enddate;
		this.deptno = deptno;
		this.role = role;
		this.deptname = deptname;
	}






	@Override
	public String toString() {
		return "EmpSecurityLoginDTO [empno=" + empno + ", empid=" + empid + ", pwd=" + pwd + ", name=" + name
				+ ", birth=" + birth + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", position="
				+ position + ", state=" + state + ", startdate=" + startdate + ", enddate=" + enddate + ", deptno="
				+ deptno + ", role=" + role + "]";
	}




	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEmpid() {
		return empid;
	}

	public void setEmpid(String empid) {
		this.empid = empid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getDeptno() {
		return deptno;
	}

	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
	
}
