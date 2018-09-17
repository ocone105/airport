package main.member;

public interface MemberDAO {
	int signup(MemberDTO member);
	MemberDTO login(String id,String pwd);
	boolean idCheck(String id);
	int update(MemberDTO member);
	int withdraw(MemberDTO member);
}
