package com.service;

import java.util.List;

import com.pojo.Vehicle;


public interface VehicleService {
	
	public List<Vehicle> selList();
	
	public void add (Vehicle vehicle);
	
	public void del(Vehicle vehicle);
	
	public void update(Vehicle vehicle);
	
	public int getTotalCount(Vehicle vehicle);
	
	public List<Vehicle> getVehicle();
	
	public List<Vehicle> getAllVehicle(Vehicle vehicle,int curPage);

	//public List<Vehicle> getVehicle();

	void del(int id);

	Vehicle getVehicle(int id);

}
