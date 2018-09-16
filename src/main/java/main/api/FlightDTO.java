package main.api;

public class FlightDTO {
	private String airline;
	private String airport;
	private String airportcode;
	private String chkinrange;
	private long estimatedDateTime;
	private String flightId;
	private Long gatenumber;
	private Long scheduleDateTime;
	private String terminalid;
	
	public FlightDTO() {}

	public FlightDTO(String airline, String airport, String airportcode, String chkinrange, long estimatedDateTime,
			String flightId, Long gatenumber, Long scheduleDateTime, String terminalid) {
		super();
		this.airline = airline;
		this.airport = airport;
		this.airportcode = airportcode;
		this.chkinrange = chkinrange;
		this.estimatedDateTime = estimatedDateTime;
		this.flightId = flightId;
		this.gatenumber = gatenumber;
		this.scheduleDateTime = scheduleDateTime;
		this.terminalid = terminalid;
	}

	@Override
	public String toString() {
		return "FlightDTO [airline=" + airline + ", airport=" + airport + ", airportcode=" + airportcode
				+ ", chkinrange=" + chkinrange + ", estimatedDateTime=" + estimatedDateTime + ", flightId=" + flightId
				+ ", gatenumber=" + gatenumber + ", scheduleDateTime=" + scheduleDateTime + ", terminalid=" + terminalid
				+ "]";
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

	public String getAirportcode() {
		return airportcode;
	}

	public void setAirportcode(String airportcode) {
		this.airportcode = airportcode;
	}

	public String getChkinrange() {
		return chkinrange;
	}

	public void setChkinrange(String chkinrange) {
		this.chkinrange = chkinrange;
	}

	public long getEstimatedDateTime() {
		return estimatedDateTime;
	}

	public void setEstimatedDateTime(long estimatedDateTime) {
		this.estimatedDateTime = estimatedDateTime;
	}

	public String getFlightId() {
		return flightId;
	}

	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}

	public Long getGatenumber() {
		return gatenumber;
	}

	public void setGatenumber(Long gatenumber) {
		this.gatenumber = gatenumber;
	}

	public Long getScheduleDateTime() {
		return scheduleDateTime;
	}

	public void setScheduleDateTime(Long scheduleDateTime) {
		this.scheduleDateTime = scheduleDateTime;
	}

	public String getTerminalid() {
		return terminalid;
	}

	public void setTerminalid(String terminalid) {
		this.terminalid = terminalid;
	}
	
}
