package main.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("memberdao")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int signup(MemberDTO member) {
		int result = sqlSession.insert("main.member.signup", member);
		return result;
	}

	@Override
	public int kakao(MemberDTO member) {
		int result = sqlSession.insert("main.member.kakao", member);
		return result;
	}
	
	@Override
	public MemberDTO login(String id, String pwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSession.selectOne("main.member.login", map);
	}

	@Override
	public boolean idCheck(String id) {
		boolean state = false;
		MemberDTO user = sqlSession.selectOne("main.member.idcheck", id);
		if (user != null) {
			state = true;
		}
		return state;
	}

	@Override
	public MemberDTO read(String id) {
		return sqlSession.selectOne("main.member.read", id);
	}

	@Override
	public int update(MemberDTO member) {
		return sqlSession.update("main.member.update", member);
	}

	@Override
	public int withdraw(String id) {
		return sqlSession.delete("main.member.memberwithdraw", id);
	}

	@Override
	public List<MemberDTO> memberList() {
		return sqlSession.selectList("main.member.memberlist");
	}

	@Override
	public List<MemberDTO> memberSearch(String search) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("search", search);
		return sqlSession.selectList("main.member.membersearch", map);
	}


}
