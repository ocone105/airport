package main.member;

import java.util.List;

public interface MemberDAO {
	int signup(MemberDTO member);
	int kakao(MemberDTO member);
	MemberDTO login(String id,String pwd);
	boolean idCheck(String id);
	int update(MemberDTO member);
	int withdraw(MemberDTO member);
	
	List<MemberDTO> memberList();
}
