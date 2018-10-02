package main.member;

import java.util.List;

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
	public int withdraw(String id) {
		return dao.withdraw(id);
	}

	@Override
	public List<MemberDTO> memberList() {
		return dao.memberList();
	}

	@Override
	public List<MemberDTO> memberSearch(String search) {
		return dao.memberSearch(search);
	}

	@Override
	public MemberDTO read(String id) {
		return dao.read(id);
	}

}
