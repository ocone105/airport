package main.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	@Qualifier("memberdao")
	MemberDAO dao;

	@Override
	public int signup(MemberDTO member) {
		return dao.signup(member);
	}

}
