package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.action.PageAction;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.mapper.VehicleMapper;
import com.pojo.Vehicle;

@Service
public class VehicleServiceImpl implements VehicleService{
	
	@Autowired
	private VehicleMapper vehicleMapper;

	@Override
	public List<Vehicle> selList() {
		// TODO Auto-generated method stub
		return vehicleMapper.selList(null, null);
	}

	@Override
	public void add(Vehicle vehicle) {
		// TODO Auto-generated method stub
		vehicleMapper.add(vehicle);
		
	}


	@Override
	public void update(Vehicle vehicle) {
		// TODO Auto-generated method stub
		vehicleMapper.update(vehicle);
		
	}

	@Override
	public int getTotalCount(Vehicle vehicle) {
		// TODO Auto-generated method stub
		return vehicleMapper.selCount(vehicle);
	}
	@Override
	
	public List<Vehicle> getVehicle() {
		// TODO Auto-generated method stub
		return vehicleMapper.selAll();
	}


	@Override
	public List<Vehicle> getAllVehicle(Vehicle vehicle, int curPage) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				//mybatis��ҳ��,����ҳ��ʹ���޲ι��췽��
				PageBounds pageBounds = new PageBounds(curPage, PageAction.PER_PAGE ); 
				Map<String,Object> hm = new HashMap<String,Object>();
				if(vehicle != null){
					hm.put("vehicleLicense", vehicle.getVehicleLicense());
				}
				return vehicleMapper.selList(hm, pageBounds);
	}

	@Override
	public void del(Vehicle vehicle) {
		// TODO Auto-generated method stub
		vehicleMapper.del(vehicle);
		
	}

	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Vehicle getVehicle(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	

	
}
