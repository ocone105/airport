package main.member.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;

import erp.login.authentication.EmpSecurityLoginDTO;
import erp.login.authentication.EmpSecurityLoginService;

public class MemberAuthenticationProvider implements AuthenticationProvider {

	private ShaPasswordEncoder passencoder = new ShaPasswordEncoder(256);

	@Autowired
	SecurityLoginService securityService;
	@Autowired
	EmpSecurityLoginService empsecurityService;
	

	@Override
	public Authentication authenticate(Authentication data) throws AuthenticationException {
		// System.out.println("MemberAuthenticationProvider: "+data);

		// 사용자가 입력한 데이터 추출하는 작업
		String username = data.getName(); // 아이디
		String checkid = username.substring(0, 3);
		if(checkid.equals("emp")) {
			String pwd = (String)data.getCredentials(); // 비밀번호
			//System.out.println(username+" , "+pwd+" , "+obj);
			
			// db인증작업을 하기 위해서 mybatis를 이용해서 db에서 조회한 결과를 저장
			EmpSecurityLoginDTO empuser = (EmpSecurityLoginDTO) empsecurityService.loadUserByUsername(username);
			//System.out.println("MemberAuthenticationProvider: "+user);
			
			
			// 원하는 데이터를 UsernamePasswordAuthenticationToken으로 만들어서 리턴
			UsernamePasswordAuthenticationToken authUser = null;

			if (empuser != null) {
				boolean state = passencoder.isPasswordValid(empuser.getPassword(), pwd, null);
				if (state) { // 로그인 성공
					authUser = new UsernamePasswordAuthenticationToken(empuser, pwd, empuser.getAuthorities());
				}
			}
			return authUser;
			
		}else {
			String pwd = (String) data.getCredentials(); // 비밀번호
			Object obj = data.getPrincipal();
			// System.out.println(username + " , " + pwd + " , " + obj);

			// db인증작업을 하기 위해서 mybatis를 이용해서 db에서 조회한 결과를 저장
			SecurityLoginDTO user = (SecurityLoginDTO) securityService.loadUserByUsername(username);
			// System.out.println("MemberAuthenticationProvider: " + user);

			// db에서 조회한 데이터와 사용자가 입력한 데이터를 비교 + 암호화해서 비교
			UsernamePasswordAuthenticationToken authUser = null;

			if (user != null) {
				boolean state = passencoder.isPasswordValid(user.getPassword(), pwd, null);
				if (state) { // 로그인 성공
					authUser = new UsernamePasswordAuthenticationToken(user, pwd, user.getAuthorities());
				}
			}
			return authUser;
		}
	}

	@Override
	public boolean supports(Class<?> arg0) {
		return true; // 인증을 처리하는 provider가 아이디와 pwd를 통해서 인증되도록 하려면 반드시 true이어야 함
	}

}
