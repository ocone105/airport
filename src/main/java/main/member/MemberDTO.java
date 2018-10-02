package main.member;

public class MemberDTO {
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private String state;
	private String email_alarm;
	private String sms_alarm;
	private String role;
	
	public MemberDTO() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getEmail_alarm() {
		return email_alarm;
	}

	public void setEmail_alarm(String email_alarm) {
		this.email_alarm = email_alarm;
	}

	public String getSms_alarm() {
		return sms_alarm;
	}

	public void setSms_alarm(String sms_alarm) {
		this.sms_alarm = sms_alarm;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public MemberDTO(String id, String pwd, String name, String phone, String email, String state, String email_alarm,
			String sms_alarm, String role) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.state = state;
		this.email_alarm = email_alarm;
		this.sms_alarm = sms_alarm;
		this.role = role;
	}

	// 회원정보 수정
	public MemberDTO(String id, String name, String phone, String email, String email_alarm, String sms_alarm) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.email_alarm = email_alarm;
		this.sms_alarm = sms_alarm;
	}	


	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone + ", email=" + email
				+ ", state=" + state + ", email_alarm=" + email_alarm + ", sms_alarm=" + sms_alarm + ", role=" + role
				+ "]";
	}
	
	
	
}
