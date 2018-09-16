package erp.board.service;

import java.util.List;

import erp.board.DTO.BoardNoticeDTO;

public interface BoardNoticeService {
	
	int insert(BoardNoticeDTO post);
	List<BoardNoticeDTO> boardlist();
	BoardNoticeDTO read(int boardno);
	int update(int boardno);
	int delete(int boardno);
}
