package main.member.authentication;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSplitPaneUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import erp.login.authentication.EmpSecurityLoginDTO;
import erp.security.dto.SecurityDTO;
import erp.security.service.SecurityService;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {
	@Autowired
	SecurityService secservice;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res, Authentication authdata)
			throws IOException, ServletException {
		// 인증된 사용자의 정보를 추출
		if(authdata.getName().substring(0, 3).equals("emp")) {
			EmpSecurityLoginDTO dto = (EmpSecurityLoginDTO) authdata.getPrincipal();
			String url = "/airport/erp/index.do";
			req.getSession().setAttribute("erploginUser", dto);
			EmpSecurityLoginDTO empdto = (EmpSecurityLoginDTO)req.getSession().getAttribute("erploginUser");
			System.out.println(empdto);
			SecurityDTO sec = secservice.secCheck(empdto.getEmpno());
			if(sec != null && sec.getScstate().equals("1")) {
				String today = new java.text.SimpleDateFormat ("yyyy-MM-dd").format(new java.util.Date()); 
				SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd"); 
				String exdate=fmt.format(sec.getExdate()); 
				if(today.equals(exdate)) {
					secservice.expire(sec.getScno());
				}
			}
			res.sendRedirect(url);		
		}else {
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
			req.getSession().setAttribute("loginUser", dto.getId());
			res.sendRedirect(url);		
		}
	
		
	}

}
