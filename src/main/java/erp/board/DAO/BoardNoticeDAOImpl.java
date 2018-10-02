package erp.board.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.board.DTO.BoardNoticeCmtDTO;
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
	public int hits(int boardno) {
		return sqlSession.update("kr.airport.erp.board.hits", boardno);
	}
	
	@Override
	public int update(BoardNoticeDTO post) {
		return sqlSession.update("kr.airport.erp.board.update", post);
	}
	
	@Override
	public int delete(int boardno) {
		return sqlSession.delete("kr.airport.erp.board.delete", boardno);
	}

	@Override
	public int insertCmt(BoardNoticeCmtDTO cmt) {
		return sqlSession.insert("kr.airport.erp.board.insertCmt", cmt);
	}

	@Override
	public List<BoardNoticeCmtDTO> Cmtlist(int boardno) {
		return sqlSession.selectList("kr.airport.erp.board.noticeCmtlist", boardno);
	}

	@Override
	public int deleteCmt(int cmtno) {
		return sqlSession.delete("kr.airport.erp.board.deleteCmt", cmtno);
	}

	@Override
	public List<BoardNoticeDTO> nboardsearch(String tag, String search) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("search", search);
		return sqlSession.selectList("kr.airport.erp.board.nboardsearch", map);
	}

	
}
