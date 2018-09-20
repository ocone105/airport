package erp.pf.DTO;

public class PFDTO {
	private int pfinfono;
	private String pfloc;
	private String pfname;
	
	public PFDTO() {}
	
	public PFDTO(int pfinfono, String pfloc, String pfname) {
		super();
		this.pfinfono = pfinfono;
		this.pfloc = pfloc;
		this.pfname = pfname;
	}

	@Override
	public String toString() {
		return "PFDTO [pfinfono=" + pfinfono + ", pfloc=" + pfloc + ", pfname=" + pfname + "]";
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
