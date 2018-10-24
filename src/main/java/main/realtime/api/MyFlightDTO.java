package main.realtime.api;

public class MyFlightDTO {
	private int favoriteno;
	private String id;
	private String flightId;
	private String airline;
	private String airport;
	private String scheduleDateTime;
	private String gatenumber;
	private String remark;
	private String delay;
	
	public MyFlightDTO() {}

	public MyFlightDTO(int favoriteno, String id, String flightId, String airline, String airport,
			String scheduleDateTime, String gatenumber, String remark, String delay) {
		super();
		this.favoriteno = favoriteno;
		this.id = id;
		this.flightId = flightId;
		this.airline = airline;
		this.airport = airport;
		this.scheduleDateTime = scheduleDateTime;
		this.gatenumber = gatenumber;
		this.remark = remark;
		this.delay = delay;
	}

	@Override
	public String toString() {
		return "MyFlightDTO [favoriteno=" + favoriteno + ", id=" + id + ", flightId=" + flightId + ", airline="
				+ airline + ", airport=" + airport + ", scheduleDateTime=" + scheduleDateTime + ", gatenumber="
				+ gatenumber + ", remark=" + remark + ", delay=" + delay + "]";
	}

	public int getFavoriteno() {
		return favoriteno;
	}

	public void setFavoriteno(int favoriteno) {
		this.favoriteno = favoriteno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFlightId() {
		return flightId;
	}

	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getAirport() {
		return airport;
	}

	public void setAirport(String airport) {
		this.airport = airport;
	}

	public String getScheduleDateTime() {
		return scheduleDateTime;
	}

	public void setScheduleDateTime(String scheduleDateTime) {
		this.scheduleDateTime = scheduleDateTime;
	}

	public String getGatenumber() {
		return gatenumber;
	}

	public void setGatenumber(String gatenumber) {
		this.gatenumber = gatenumber;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getDelay() {
		return delay;
	}

	public void setDelay(String delay) {
		this.delay = delay;
	}

}
