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
	
	@Override
	public int kakao(MemberDTO member) {
		return dao.kakao(member);
	}

	@Override
	public MemberDTO login(String id, String pwd) {
		return dao.login(id, pwd);
	}

	@Override
	public boolean idCheck(String id) {
		return dao.idCheck(id);
	}

	@Override
	public int update(MemberDTO member) {
		return dao.update(member);
	}

	@Override
	public int withdraw(MemberDTO member) {
		return dao.withdraw(member);
	}

}
