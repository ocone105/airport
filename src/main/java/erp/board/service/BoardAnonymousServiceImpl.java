package erp.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.board.DAO.BoardAnonymousDAO;
import erp.board.DAO.BoardNoticeDAO;
import erp.board.DTO.BoardAnonymousDTO;
import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;
@Service
public class BoardAnonymousServiceImpl implements BoardAnonymousService {
	
	@Autowired
	BoardAnonymousDAO dao;
	
	@Override
	public int insert(BoardAnonymousDTO post) {
		return dao.insert(post);
	}

	@Override
	public List<BoardAnonymousDTO> boardlist() {
		return dao.boardlist();
	}
	
	@Override
	public BoardAnonymousDTO read(int boardno) {
		return dao.read(boardno);
	}

	@Override
	public int hits(int boardno) {
		return dao.hits(boardno);
	}
	
	@Override
	public int update(BoardAnonymousDTO post) {
		return dao.update(post);
	}
	
	@Override
	public int delete(int boardno) {
		return dao.delete(boardno);
	}

	@Override
	public int insertCmt(BoardNoticeCmtDTO cmt) {
		return dao.insertCmt(cmt);
	}

	@Override
	public List<BoardAnonymousDTO> Cmtlist(int boardno) {
		return dao.Cmtlist(boardno);
	}

	@Override
	public int deleteCmt(int cmtno) {
		return dao.deleteCmt(cmtno);
	}

	@Override
	public List<BoardAnonymousDTO> aboardsearch(String tag, String search) {
		return dao.aboardsearch(tag, search);
	}

}
