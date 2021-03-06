package main.member;

import java.util.List;


public interface MemberService {
	int signup(MemberDTO member);
	int kakao(MemberDTO member);
	MemberDTO login(String id, String pwd);
	boolean idCheck(String id);
	int update(MemberDTO member);
	int withdraw(String id);
	
	MemberDTO read(String id);
	List<MemberDTO> memberList();
	List<MemberDTO> memberSearch(String search);
}
