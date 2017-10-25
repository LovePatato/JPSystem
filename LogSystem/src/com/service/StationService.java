package com.service;

import java.util.List;

import com.pojo.Station;


public interface StationService {
	public List<Station> selList(int curPage);
	public void add(Station station);
	public void del(Station station);
	public void update(Station station);
	public int selCount();
	public List<Station> getStation();
	public List<Station> getWDStation(String id);
}
