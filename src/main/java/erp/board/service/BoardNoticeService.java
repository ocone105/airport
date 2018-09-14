package erp.board.service;

import java.util.List;

import erp.board.DTO.BoardNoticeDTO;

public interface BoardNoticeService {
	
	int insert(BoardNoticeDTO post);
	List<BoardNoticeDTO> boardlist();
	int delete(String boardno);
}
