package erp.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.board.DAO.BoardNoticeDAO;
import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;
@Service
public class BoardNoticeServiceImpl implements BoardNoticeService {
	
	@Autowired
	BoardNoticeDAO dao;
	
	@Override
	public int insert(BoardNoticeDTO post) {
		return dao.insert(post);
	}

	@Override
	public List<BoardNoticeDTO> boardlist() {
		return dao.boardlist();
	}
	
	@Override
	public BoardNoticeDTO read(int boardno) {
		return dao.read(boardno);
	}

	@Override
	public int update(BoardNoticeDTO post) {
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
	public List<BoardNoticeCmtDTO> Cmtlist(int boardno) {
		return dao.Cmtlist(boardno);
	}

	@Override
	public int deleteCmt(int cmtno) {
		return dao.deleteCmt(cmtno);
	}
	
}
