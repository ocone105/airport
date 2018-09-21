package erp.board.DAO;

import java.util.List;

import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;

public interface BoardNoticeDAO {

	int insert(BoardNoticeDTO post);
	List<BoardNoticeDTO> boardlist();
	BoardNoticeDTO read(int boardno);
	int hits(int boardno);
	int update(BoardNoticeDTO post);
	int delete(int boardno);
	
	int insertCmt(BoardNoticeCmtDTO cmt);
	List<BoardNoticeCmtDTO> Cmtlist(int boardno);
	int deleteCmt(int cmtno);
}