package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import com.pojo.Vehicle;
import com.service.VehicleService;

@Controller
public class VehicleAction extends PageAction {

	private Vehicle vehicle;

	@Resource
	private VehicleService vehicleService;

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	public String list() {

		this.init(vehicleService.getTotalCount(vehicle));
		// 初始化列表List
		List<Vehicle> list = vehicleService.getAllVehicle(vehicle,this.getCurPage());
		HttpServletRequest req = ServletActionContext.getRequest();
		// 获取list
		req.setAttribute("list", list);

		return "list";
	}

	public String add() {
		vehicleService.add(vehicle);
		vehicle=null;
		return list();
	}

	public String del() {
		vehicleService.del(vehicle);
		vehicle=null;
		return list();
	}
	
	public String update(){
		
		vehicleService.update(vehicle);
		vehicle=null;
		return list();
	}

	
}
