package erp.board.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.board.DTO.BoardNoticeDTO;

@Repository
public class BoardNoticeDAOImpl implements BoardNoticeDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(BoardNoticeDTO post) {
		return sqlSession.insert("kr.airport.erp.board.insert", post);
	}

	@Override
	public List<BoardNoticeDTO> boardlist() {
		return sqlSession.selectList("kr.airport.erp.board.noticelist");
	}
	
	@Override
	public BoardNoticeDTO read(int boardno) {
		return sqlSession.selectOne("kr.airport.erp.board.read", boardno);
	}
	
	@Override
	public int update(BoardNoticeDTO post) {
		System.out.println(post);
		return sqlSession.update("kr.airport.erp.board.update", post);
	}
	
	@Override
	public int delete(int boardno) {
		return sqlSession.delete("kr.airport.erp.board.delete", boardno);
	}
	
}
