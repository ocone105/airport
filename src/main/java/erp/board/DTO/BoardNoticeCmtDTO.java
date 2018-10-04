package erp.board.DTO;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardNoticeCmtDTO {
	private int cmtno; 
	private String cmttxt;
	private Date cmtdate; 
	private int boardno;
	private int empno; 
	private String id;

	public BoardNoticeCmtDTO(){}

	public BoardNoticeCmtDTO(int cmtno, String cmttxt, Date cmtdate, int boardno, int empno) {
		super();
		this.cmtno = cmtno;
		this.cmttxt = cmttxt;
		this.cmtdate = cmtdate;
		this.boardno = boardno;
		this.empno = empno;
	}

	public BoardNoticeCmtDTO(int cmtno, String cmttxt, Date cmtdate, int boardno, int empno, String id) {
		super();
		this.cmtno = cmtno;
		this.cmttxt = cmttxt;
		this.cmtdate = cmtdate;
		this.boardno = boardno;
		this.empno = empno;
		this.id = id;
	}

	@Override
	public String toString() {
		return "BoardNoticeCmtDTO [cmtno=" + cmtno + ", cmttxt=" + cmttxt + ", cmtdate=" + cmtdate + ", boardno="
				+ boardno + ", empno=" + empno + "]";
	}

	public int getCmtno() {
		return cmtno;
	}

	public void setCmtno(int cmtno) {
		this.cmtno = cmtno;
	}

	public String getCmttxt() {
		return cmttxt;
	}

	public void setCmttxt(String cmttxt) {
		this.cmttxt = cmttxt;
	}

	public Date getCmtdate() {
		return cmtdate;
	}

	public void setCmtdate(Date cmtdate) {
		this.cmtdate = cmtdate;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	

}