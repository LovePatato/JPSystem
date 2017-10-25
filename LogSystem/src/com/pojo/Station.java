package com.pojo;

public class Station {
	private String id;
	private String stationName;

	private String stationPhone;
	private String stationAddress;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	public String getStationPhone() {
		return stationPhone;
	}
	public void setStationPhone(String stationPhone) {
		this.stationPhone = stationPhone;
	}
	public String getStationAddress() {
		return stationAddress;
	}
	public void setStationAddress(String stationAddress) {
		this.stationAddress = stationAddress;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "["+id+","+stationName+","+stationPhone+","+stationAddress+"]";
	}
}
