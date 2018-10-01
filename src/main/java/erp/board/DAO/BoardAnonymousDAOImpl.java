package erp.board.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import erp.board.DTO.BoardAnonymousDTO;
import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;

@Repository
public class BoardAnonymousDAOImpl implements BoardAnonymousDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(BoardAnonymousDTO post) {
		return sqlSession.insert("kr.airport.erp.board.insert2", post);
	}

	@Override
	public List<BoardAnonymousDTO> boardlist() {
		return sqlSession.selectList("kr.airport.erp.board.anonymouslist");
	}
	
	@Override
	public BoardAnonymousDTO read(int boardno) {
		return sqlSession.selectOne("kr.airport.erp.board.read2", boardno);
	}
	
	@Override
	public int hits(int boardno) {
		return sqlSession.update("kr.airport.erp.board.hits", boardno);
	}
	
	@Override
	public int update(BoardAnonymousDTO post) {
		return sqlSession.update("kr.airport.erp.board.update2", post);
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
	public List<BoardAnonymousDTO> Cmtlist(int boardno) {
		return sqlSession.selectList("kr.airport.erp.board.noticeCmtlist", boardno);
	}

	@Override
	public int deleteCmt(int cmtno) {
		return sqlSession.delete("kr.airport.erp.board.deleteCmt", cmtno);
	}

	@Override
	public List<BoardAnonymousDTO> aboardsearch(String tag, String search) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("search", search);
		return sqlSession.selectList("kr.airport.erp.board.aboardsearch", map);
	}

	
}
