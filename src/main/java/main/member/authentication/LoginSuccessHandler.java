package main.member.authentication;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res, Authentication authdata)
			throws IOException, ServletException {
		// 인증된 사용자의 정보를 추출
		SecurityLoginDTO dto = (SecurityLoginDTO) authdata.getPrincipal();

		// 권한리스트를 추출
		Collection<GrantedAuthority> authlist = dto.getAuthorities();
		Iterator<GrantedAuthority> authlist_it = authlist.iterator();
		String url = "/airport/main/index.do";

		while (authlist_it.hasNext()) {
			GrantedAuthority authority = authlist_it.next();
			// 설정되어 있는 권한 중 ROLE_ADMIN이 있다면
			if (authority.getAuthority().equals("ROLE_ADMIN")) {
				url = "/airport/main/admin";
			}
		}
		res.sendRedirect(url);		
	}

}
