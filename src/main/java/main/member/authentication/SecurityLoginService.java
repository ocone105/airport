package main.member.authentication;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
@Service
public class SecurityLoginService implements UserDetailsService {

	@Autowired
	SqlSession sqlsession;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//System.out.println(username + ".............loadUserByUsername");
		Map<String, Object> user = sqlsession.selectOne("main.member.securityLogin", username);
		//System.out.println("user: " + user);
		//System.out.println("user: " + user.get("ID"));

		UserDetails loginUser = null;

		List<GrantedAuthority> gaslist = new ArrayList<GrantedAuthority>();
		gaslist.add(new SimpleGrantedAuthority(user.get("ROLE").toString()));
/*		loginUser = new SecurityLoginDTO(user.get("ID").toString(), user.get("PWD").toString(), true, true, true, true,
				gaslist, user.get("NAME").toString(), user.get("PHONE").toString(), user.get("EMAIL").toString(),
				user.get("STATE").toString(), user.get("EMAIL_ALARM").toString(), user.get("SMS_ALARM").toString(),
				user.get("ROLE").toString());*/

		loginUser = new SecurityLoginDTO(user.get("ID").toString(), user.get("PWD").toString(), true, true, true, true,
				gaslist, user.get("NAME").toString(), user.get("ROLE").toString());
		return loginUser;
	}

}
