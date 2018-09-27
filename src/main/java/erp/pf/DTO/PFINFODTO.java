package erp.pf.DTO;

public class PFINFODTO {
	private int pfinfono;
	private String pfloc;
	private String pfname;
	
	public PFINFODTO() {}
	
	public PFINFODTO(int pfinfono, String pfloc, String pfname) {
		super();
		this.pfinfono = pfinfono;
		this.pfloc = pfloc;
		this.pfname = pfname;
	}

	@Override
	public String toString() {
		return "PFINFODTO [pfinfono=" + pfinfono + ", pfloc=" + pfloc + ", pfname=" + pfname + "]";
	}

	public int getPfinfono() {
		return pfinfono;
	}

	public void setPfinfono(int pfinfono) {
		this.pfinfono = pfinfono;
	}

	public String getPfloc() {
		return pfloc;
	}

	public void setPfloc(String pfloc) {
		this.pfloc = pfloc;
	}

	public String getPfname() {
		return pfname;
	}

	public void setPfname(String pfname) {
		this.pfname = pfname;
	}
	
	
}
