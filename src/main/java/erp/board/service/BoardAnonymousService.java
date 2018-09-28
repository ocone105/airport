package erp.board.service;

import java.util.List;

import erp.board.DTO.BoardAnonymousDTO;
import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;

public interface BoardAnonymousService {
	
	int insert(BoardAnonymousDTO post);
	List<BoardAnonymousDTO> boardlist();
	BoardAnonymousDTO read(int boardno);
	int hits(int boardno);
	int update(BoardAnonymousDTO post);
	int delete(int boardno);
	
	int insertCmt(BoardNoticeCmtDTO cmt);
	List<BoardAnonymousDTO> Cmtlist(int boardno);
	int deleteCmt(int cmtno);
}
