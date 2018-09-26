package erp.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.board.DTO.BoardNoticeCmtDTO;
import erp.board.service.BoardNoticeService;

@Controller
public class BoardNoticeCmtController {
	
	@Autowired
	BoardNoticeService service;
	
	@RequestMapping(value="/erp/cmt/noticewrite.do", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody List<BoardNoticeCmtDTO> insert(int boardno, int empno, String cmttxt){
		BoardNoticeCmtDTO cmt = new BoardNoticeCmtDTO();
		cmt.setBoardno(boardno);
		cmt.setEmpno(empno);
		cmt.setCmttxt(cmttxt);
		service.insertCmt(cmt);
		List<BoardNoticeCmtDTO> list = service.Cmtlist(cmt.getBoardno());
		return list;
	}
	
	@RequestMapping(value="/erp/cmt/noticedelete.do", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody List<BoardNoticeCmtDTO> delete(int cmtno, int boardno){
		service.deleteCmt(cmtno);
		List<BoardNoticeCmtDTO> list = service.Cmtlist(boardno);
		return list;
	}
	
}