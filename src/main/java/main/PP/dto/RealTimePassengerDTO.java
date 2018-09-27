package main.PP.dto;

public class RealTimePassengerDTO {
	Long areadiv; //지역구분
	Long cgtdt;	//혼잡일자 YYYYMMDD
	String cgthm;	//업데이트시간 HHMM
	Long gate1;	// T1 2번, T2 1번 출국장 혼잡도
	Long gate2; 	// T1 3번, T2 2번
	Long gate3;	// T1 4번
	Long gate4;	// T1 5번 
	Long gateinfo1;	// T1 2번, T2 1번  출국장대기인수
	Long gateinfo2;	// T1 3번, T2 2번
	Long gateinfo3;	// T1 4번 
	Long gateinfo4;	// T1 5번
	Long terno;	// 터미널구분
	
	public RealTimePassengerDTO() {
		super();
	}
	public RealTimePassengerDTO(Long areadiv, Long cgtdt, String cgthm, Long gate1, Long gate2, Long gate3,
			Long gate4, Long gateinfo1, Long gateinfo2, Long gateinfo3, Long gateinfo4, Long terno) {
		super();
		this.areadiv = areadiv;
		this.cgtdt = cgtdt;
		this.cgthm = cgthm;
		this.gate1 = gate1;
		this.gate2 = gate2;
		this.gate3 = gate3;
		this.gate4 = gate4;
		this.gateinfo1 = gateinfo1;
		this.gateinfo2 = gateinfo2;
		this.gateinfo3 = gateinfo3;
		this.gateinfo4 = gateinfo4;
		this.terno = terno;
	}
	@Override
	public String toString() {
		return "PredictPassengerDTO [areadiv=" + areadiv + ", cgtdt=" + cgtdt + ", cgthm=" + cgthm + ", gate1=" + gate1
				+ ", gate2=" + gate2 + ", gate3=" + gate3 + ", gate4=" + gate4 + ", gateinfo1=" + gateinfo1
				+ ", gateinfo2=" + gateinfo2 + ", gateinfo3=" + gateinfo3 + ", gateinfo4=" + gateinfo4 + ", terno="
				+ terno + "]";
	}
	public Long getAreadiv() {
		return areadiv;
	}
	public void setAreadiv(Long areadiv) {
		this.areadiv = areadiv;
	}
	public Long getCgtdt() {
		return cgtdt;
	}
	public void setCgtdt(Long cgtdt) {
		this.cgtdt = cgtdt;
	}
	public String getCgthm() {
		return cgthm;
	}
	public void setCgthm(String cgthm) {
		this.cgthm = cgthm;
	}
	public Long getGate1() {
		return gate1;
	}
	public void setGate1(Long gate1) {
		this.gate1 = gate1;
	}
	public Long getGate2() {
		return gate2;
	}
	public void setGate2(Long gate2) {
		this.gate2 = gate2;
	}
	public Long getGate3() {
		return gate3;
	}
	public void setGate3(Long gate3) {
		this.gate3 = gate3;
	}
	public Long getGate4() {
		return gate4;
	}
	public void setGate4(Long gate4) {
		this.gate4 = gate4;
	}
	public Long getGateinfo1() {
		return gateinfo1;
	}
	public void setGateinfo1(Long gateinfo1) {
		this.gateinfo1 = gateinfo1;
	}
	public Long getGateinfo2() {
		return gateinfo2;
	}
	public void setGateinfo2(Long gateinfo2) {
		this.gateinfo2 = gateinfo2;
	}
	public Long getGateinfo3() {
		return gateinfo3;
	}
	public void setGateinfo3(Long gateinfo3) {
		this.gateinfo3 = gateinfo3;
	}
	public Long getGateinfo4() {
		return gateinfo4;
	}
	public void setGateinfo4(Long gateinfo4) {
		this.gateinfo4 = gateinfo4;
	}
	public Long getTerno() {
		return terno;
	}
	public void setTerno(Long terno) {
		this.terno = terno;
	}
	
	
}
 