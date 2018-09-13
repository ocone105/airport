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
		return sqlSession.insert("kitri.re.airport.erp.board.insert", post);
	}

	@Override
	public List<BoardNoticeDTO> boardlist() {
		return sqlSession.selectList("kitri.re.airport.erp.board.insert.noticelist");
	}
	
	@Override
	public int delete(String boardno) {
		return sqlSession.delete("kitri.re.airport.erp.board.insert.delete", boardno);
	}
}
