package main.member;

import java.util.HashMap;
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
	public int update(MemberDTO member) {
		return sqlSession.update("main.member.update", member);
	}

	@Override
	public int withdraw(MemberDTO member) {
		return sqlSession.update("main.member.withdraw", member);
	}

}
