package erp.board.DTO;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardNoticeDTO {
	private int boardno;
	private String ctg;
	private String title;
	private String txt;
	private Date boarddate;
	private int hits;
	private String attach;
	private int empno;
	private MultipartFile upfile;

	public BoardNoticeDTO(){}

	public BoardNoticeDTO(int boardno, String ctg, String title, String txt, Date boarddate, int hits, String attach,
			int empno, MultipartFile upfile) {
		super();
		this.boardno = boardno;
		this.ctg = ctg;
		this.title = title;
		this.txt = txt;
		this.boarddate = boarddate;
		this.hits = hits;
		this.attach = attach;
		this.empno = empno;
		this.upfile = upfile;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public String getCtg() {
		return ctg;
	}

	public void setCtg(String ctg) {
		this.ctg = ctg;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public Date getBoarddate() {
		return boarddate;
	}

	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getAttach() {
		return attach;
	}

	public void setAttach(String attach) {
		this.attach = attach;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public MultipartFile getFile() {
		return upfile;
	}

	public void setFile(MultipartFile upfile) {
		this.upfile = upfile;
	}
	
}
