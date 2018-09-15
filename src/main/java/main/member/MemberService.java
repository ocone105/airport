package main.member;

public interface MemberService {
	int signup(MemberDTO member);
	MemberDTO login(String id, String pwd);
	boolean idCheck(String id);
}
