package erp.board.DAO;

import java.util.List;

import erp.board.DTO.BoardAnonymousDTO;
import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.DTO.BoardNoticeDTO;
import erp.security.dto.SecurityDTO;

public interface BoardAnonymousDAO {

	int insert(BoardAnonymousDTO post);
	List<BoardAnonymousDTO> boardlist();
	BoardAnonymousDTO read(int boardno);
	int hits(int boardno);
	int update(BoardAnonymousDTO post);
	int delete(int boardno);
	
	int insertCmt(BoardNoticeCmtDTO cmt);
	List<BoardAnonymousDTO> Cmtlist(int boardno);
	int deleteCmt(int cmtno);
	
	List<BoardAnonymousDTO> aboardsearch(String tag,String search);
}