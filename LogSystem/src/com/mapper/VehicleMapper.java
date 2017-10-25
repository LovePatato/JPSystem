package com.mapper;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.pojo.Vehicle;



public interface VehicleMapper {
	
	public List<Vehicle> selList(Map hm,PageBounds pageBounds);

 	public void add(Vehicle vehicle);
 
 	public void update(Vehicle vehicle);
 
 	public void del(int id);
 	
	public int selCount(Vehicle vehicle);

	public List<Vehicle> selAll();

	public void del(Vehicle vehicle);
	



}
