package main.member.authentication;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class SecurityLoginDTO extends User {
	public SecurityLoginDTO(String id, String pwd, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		super(id, pwd, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);

	}

	public SecurityLoginDTO(String id, String pwd, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities,
			String name, String phone, String email, String state, String email_alarm, String sms_alarm, String role) {
		super(id, pwd, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
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
	
	public SecurityLoginDTO(String id, String pwd, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities,
			String name, String role) {
		super(id, pwd, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.role = role;
	}

	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private String state;
	private String email_alarm;
	private String sms_alarm;
	private String role;

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

	@Override
	public String toString() {
		return "SecurityLoginDTO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", state=" + state + ", email_alarm=" + email_alarm + ", sms_alarm=" + sms_alarm + ", role="
				+ role + "]";
	}

}
