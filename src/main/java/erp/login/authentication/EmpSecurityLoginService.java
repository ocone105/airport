package erp.login.authentication;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
public class EmpSecurityLoginService implements UserDetailsService {

	@Autowired
	SqlSession sqlsession;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Map<String, Object> user = sqlsession.selectOne("kr.airport.erp.insa.securitylogin", username);

		UserDetails erploginUser = null;

		List<GrantedAuthority> gaslist = new ArrayList<GrantedAuthority>();
		gaslist.add(new SimpleGrantedAuthority(user.get("ROLE").toString()));


		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		long STARTDATE = 0;
		long ENDDATE = 0;
		try {
			STARTDATE= sdf.parse(user.get("STARTDATE").toString()).getTime();
			ENDDATE= sdf.parse(user.get("ENDDATE").toString()).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		erploginUser = new EmpSecurityLoginDTO(user.get("EMPID").toString(), user.get("PWD").toString(), 
				true, true, true, true, gaslist,Integer.parseInt(user.get("EMPNO").toString()), user.get("NAME").toString(), 
				user.get("BIRTH").toString(),user.get("GENDER").toString(),user.get("PHONE").toString(), 
				user.get("EMAIL").toString(),user.get("POSITION").toString(),user.get("STATE").toString(), 
				new Date(STARTDATE), new Date(ENDDATE), user.get("DEPTNO").toString(),
				user.get("ROLE").toString(),user.get("DEPTNAME").toString());

		return erploginUser;
	}

}
