package erp.security.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import erp.security.dao.SecurityDAO;

@Service
public class SecurityServiceImpl implements SecurityService {
	@Autowired
	@Qualifier("securitydao")
	SecurityDAO dao;

	
}
