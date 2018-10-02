package erp.login.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;

public class EmpAuthenticationProvider implements AuthenticationProvider{

	@Autowired
	EmpSecurityLoginService empsecurityService;
	
	@Override
	public Authentication authenticate(Authentication data) throws AuthenticationException {
		//System.out.println("MemberAuthenticationProvider: "+data);
		
		// 사용자가 입력한 데이터 추출하는 작업
		String username = data.getName(); // 아이디
		String pwd = (String)data.getCredentials(); // 비밀번호
		Object obj = data.getPrincipal();
		//System.out.println(username+" , "+pwd+" , "+obj);
		
		// db인증작업을 하기 위해서 mybatis를 이용해서 db에서 조회한 결과를 저장
		EmpSecurityLoginDTO empuser = (EmpSecurityLoginDTO) empsecurityService.loadUserByUsername(username);
		//System.out.println("MemberAuthenticationProvider: "+user);
		
		// db에서 조회한 데이터와 사용자가 입력한 데이터를 비교
		boolean state = pwd.equals(empuser.getPassword());
		//System.out.println(state);
		
		// 원하는 데이터를 UsernamePasswordAuthenticationToken으로 만들어서 리턴
		UsernamePasswordAuthenticationToken authUser = null;
		if(state) { //로그인 성공
			//System.out.println("로그인 성공");
			authUser = new UsernamePasswordAuthenticationToken(empuser, pwd, empuser.getAuthorities());
			
			//System.out.println("provider: "+authUser.getPrincipal());
		}else {
			//System.out.println("로그인 실패");
			
		}

		return authUser;
	}

	@Override
	public boolean supports(Class<?> arg0) {
		return true; // 인증을 처리하는 provider가 아이디와 pwd를 통해서 인증되도록 하려면 반드시 true이어야 함
	}

}
