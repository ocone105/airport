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
	private MultipartFile fileName;
	private int empno;

	public BoardNoticeDTO(){}

	public BoardNoticeDTO(int boardno, String ctg, String title, String txt, Date boarddate, int hits,
			MultipartFile fileName, int empno) {
		super();
		this.boardno = boardno;
		this.ctg = ctg;
		this.title = title;
		this.txt = txt;
		this.boarddate = boarddate;
		this.hits = hits;
		this.fileName = fileName;
		this.empno = empno;
	}

	@Override
	public String toString() {
		return "BoardNoticeDTO [boardno=" + boardno + ", ctg=" + ctg + ", title=" + title + ", txt=" + txt
				+ ", boarddate=" + boarddate + ", hits=" + hits + ", fileName=" + fileName + ", empno=" + empno + "]";
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

	public MultipartFile getFileName() {
		return fileName;
	}

	public void setFileName(MultipartFile fileName) {
		this.fileName = fileName;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
}
