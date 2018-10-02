package main.PP.dto;

public class PredictPassengerDTO {
	Long adate;  		//날짜
	String atime;		//시간대
	Long t1sum1;		//승객예고 T1입국장 동편(A,B) 현황
	Long t1sum2;		//승객예고 T1입국장 서편(E,F) 현황
	Long t1sum3;		//승객예고 T1입국심사(C) 현황
	Long t1sum4;		//승객예고 T1입국심사(D) 현황
	Long t1sum5;		//승객예고 T1출국장1,2 현황
	Long t1sum6;		//승객예고 T1출국장3 현황
	Long t1sum7;		//승객예고 T1출국장4 현황
	Long t1sum8;		//승객예고 T1출국장5,6 현황
	Long t1sumset1;	//승객예고 T1입국장 합계
	Long t1sumset2;	//승객예고 T1출국장 합계
	Long t2sum1;		//승객예고 T2입국장 1 현황
	Long t2sum2;		//승객예고 T2입국장 2 현황
	Long t2sum3;		//승객예고 T2출국장 1 현황
	Long t2sum4;		//승객예고 T2출국장 2 현황
	Long t2sumset1;	//승객예고 T2입국장 합계
	Long t2sumset2;	//승객예고 T2출국장 합계
	
	
	
	public PredictPassengerDTO() {
		super();
	}



	public PredictPassengerDTO(Long adate, String atime, Long t1sum1, Long t1sum2, Long t1sum3, Long t1sum4,
			Long t1sum5, Long t1sum6, Long t1sum7, Long t1sum8, Long t1sumset1, Long t1sumset2, Long t2sum1,
			Long t2sum2, Long t2sum3, Long t2sum4, Long t2sumset1, Long t2sumset2) {
		super();
		this.adate = adate;
		this.atime = atime;
		this.t1sum1 = t1sum1;
		this.t1sum2 = t1sum2;
		this.t1sum3 = t1sum3;
		this.t1sum4 = t1sum4;
		this.t1sum5 = t1sum5;
		this.t1sum6 = t1sum6;
		this.t1sum7 = t1sum7;
		this.t1sum8 = t1sum8;
		this.t1sumset1 = t1sumset1;
		this.t1sumset2 = t1sumset2;
		this.t2sum1 = t2sum1;
		this.t2sum2 = t2sum2;
		this.t2sum3 = t2sum3;
		this.t2sum4 = t2sum4;
		this.t2sumset1 = t2sumset1;
		this.t2sumset2 = t2sumset2;
	}



	@Override
	public String toString() {
		return "PredictPassengerDTO [adate=" + adate + ", atime=" + atime + ", t1sum1=" + t1sum1 + ", t1sum2="
				+ t1sum2 + ", t1sum3=" + t1sum3 + ", t1sum4=" + t1sum4 + ", t1sum5=" + t1sum5 + ", t1sum6=" + t1sum6
				+ ", t1sum7=" + t1sum7 + ", t1sum8=" + t1sum8 + ", t1sumset1=" + t1sumset1 + ", t1sumset2=" + t1sumset2
				+ ", t2sum1=" + t2sum1 + ", t2sum2=" + t2sum2 + ", t2sum3=" + t2sum3 + ", t2sum4=" + t2sum4
				+ ", t2sumset1=" + t2sumset1 + ", t2sumset2=" + t2sumset2 + "]";
	}



	public Long getAdate() {
		return adate;
	}



	public void setAdate(Long adate) {
		this.adate = adate;
	}



	public String getAtime() {
		return atime;
	}



	public void setAtime(String atime) {
		this.atime = atime;
	}



	public Long getT1sum1() {
		return t1sum1;
	}



	public void setT1sum1(Long t1sum1) {
		this.t1sum1 = t1sum1;
	}



	public Long getT1sum2() {
		return t1sum2;
	}



	public void setT1sum2(Long t1sum2) {
		this.t1sum2 = t1sum2;
	}



	public Long getT1sum3() {
		return t1sum3;
	}



	public void setT1sum3(Long t1sum3) {
		this.t1sum3 = t1sum3;
	}



	public Long getT1sum4() {
		return t1sum4;
	}



	public void setT1sum4(Long t1sum4) {
		this.t1sum4 = t1sum4;
	}



	public Long getT1sum5() {
		return t1sum5;
	}



	public void setT1sum5(Long t1sum5) {
		this.t1sum5 = t1sum5;
	}



	public Long getT1sum6() {
		return t1sum6;
	}



	public void setT1sum6(Long t1sum6) {
		this.t1sum6 = t1sum6;
	}



	public Long getT1sum7() {
		return t1sum7;
	}



	public void setT1sum7(Long t1sum7) {
		this.t1sum7 = t1sum7;
	}



	public Long getT1sum8() {
		return t1sum8;
	}



	public void setT1sum8(Long t1sum8) {
		this.t1sum8 = t1sum8;
	}



	public Long getT1sumset1() {
		return t1sumset1;
	}



	public void setT1sumset1(Long t1sumset1) {
		this.t1sumset1 = t1sumset1;
	}



	public Long getT1sumset2() {
		return t1sumset2;
	}



	public void setT1sumset2(Long t1sumset2) {
		this.t1sumset2 = t1sumset2;
	}



	public Long getT2sum1() {
		return t2sum1;
	}



	public void setT2sum1(Long t2sum1) {
		this.t2sum1 = t2sum1;
	}



	public Long getT2sum2() {
		return t2sum2;
	}



	public void setT2sum2(Long t2sum2) {
		this.t2sum2 = t2sum2;
	}



	public Long getT2sum3() {
		return t2sum3;
	}



	public void setT2sum3(Long t2sum3) {
		this.t2sum3 = t2sum3;
	}



	public Long getT2sum4() {
		return t2sum4;
	}



	public void setT2sum4(Long t2sum4) {
		this.t2sum4 = t2sum4;
	}



	public Long getT2sumset1() {
		return t2sumset1;
	}



	public void setT2sumset1(Long t2sumset1) {
		this.t2sumset1 = t2sumset1;
	}



	public Long getT2sumset2() {
		return t2sumset2;
	}



	public void setT2sumset2(Long t2sumset2) {
		this.t2sumset2 = t2sumset2;
	}
	
	
}
