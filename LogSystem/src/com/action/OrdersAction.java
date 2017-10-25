package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
//import java.util.Locale;
import javax.annotation.Resource;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

//import com.pojo.GoodsType;
import com.pojo.Goods;
//import com.pojo.GoodsType;
import com.pojo.Orders;
import com.pojo.Station;
import com.pojo.Vehicle;
import com.pojo.Way;

import com.service.GoodsService;
//import com.service.GoodsTypeService;
import com.service.OrdersService;
import com.service.StationService;
import com.service.VehicleService;
import com.service.WayService;

@Controller
public class OrdersAction extends PageAction {

	private Orders orders;

	private String id;
	
	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}

	@Resource
	private StationService stationService;

	@Resource
	private VehicleService vehicleService;

	@Resource
	private OrdersService ordersService;

	@Resource
	private WayService wayService;

	@Resource
	private GoodsService goodsService;

	/*
	 * 获取orders 存储在list中
	 * */
	public String list() {

		HttpServletRequest req = ServletActionContext.getRequest();
		List<Way> waylist = wayService.getWay();//建立waylist存储way数据
		req.setAttribute("waylist", waylist);

		List<Vehicle> vehiclelist = vehicleService.getVehicle();
		req.setAttribute("vehiclelist", vehiclelist);

		List<Station> stationlist = stationService.getStation();
		
		req.setAttribute("stationlist", stationlist);

		List<Goods> goodsTypelist = goodsService.getGoods();
		req.setAttribute("goodsTypelist", goodsTypelist);
	   
		List<Orders> list = ordersService.getAllOrders();
		
		System.out.println("qeqweqweqwe"+list);
		req.setAttribute("list", list);
		
		/*
		 * 分页查询
		 * */
		List<Orders> lists = ordersService.selList(orders,this.getCurPage());
		this.init(lists.size());
		//System.out.println("eiojaojaojsdjao"+ orders.getId());
		req.setAttribute("list", lists);
		if(orders!=null){//判断是否获取到orders
			req.setAttribute("o", orders);
			orders=new Orders();
		}
		
		return "list";
	}
	
	
	
	/*
	 * 
	 * 添加
	 * */
	
	public String add(){
		
	
		ordersService.addOrders(orders);
		orders=new Orders();
		return "add";
	}
	
	

	//
	public String selOne() {

		HttpServletRequest req = ServletActionContext.getRequest();
		// 缂傛牞绶�
		List<Orders> list = ordersService.getOrders(orders.getId());
		req.setAttribute("list", list.get(0));

		List<Way> waylist = wayService.getWay();
		req.setAttribute("waylist", waylist);

		List<Vehicle> vehiclelist = vehicleService.getVehicle();
		req.setAttribute("vehiclelist", vehiclelist);

		List<Station> stationlist = stationService.getStation();
		req.setAttribute("stationlist", stationlist);

		List<Goods> goodsTypelist = goodsService.getGoods();
		req.setAttribute("goodsTypelist", goodsTypelist);
		orders=new Orders();
		return "update";
	}

	

	// 更新
	public String update() {
		System.out.println(orders.toString());
		ordersService.update(orders);
		System.out.println(orders.toString());
		orders=new Orders();
		return list();
		
		
	}

	// 删除
	public String del() {

		ordersService.del(orders.getId());
		orders = new Orders();
		return list();
	}

	//根据id获取数据，并以json方式传输到前台
	public void selWays() throws IOException{
		
		HttpServletResponse res = ServletActionContext.getResponse();
		
		//获取list id
		List<Way> list = wayService.getStationId(id);
		
		System.out.println(list);
		List<Map<String,Object>> listStationId = new ArrayList<Map<String,Object>>();
		
		//设置Map
		
		Map<String,Object> map = new HashMap<String,Object>();
		for(Way way : list){
			System.out.println("this is a test!");
			map = new HashMap<String,Object>();
			//put所需要的数据
			map.put("startId", way.getStartStation());
			map.put("endId", way.getEndStation());
			
			map.put("startStationName",way.getStartStationName().getStationName());
			map.put("endStationName",way.getEndStationName().getStationName());
			
			listStationId.add(map);
		}
		
		//生成json键值对
		
		JSONArray js = JSONArray.fromObject(listStationId);

		res.setContentType("text/html;charset=utf-8");
		PrintWriter pw = res.getWriter();
		pw.write(js.toString());
		pw.flush();
		pw.close();
		
	}
	
	
	
	
	public OrdersService getOrdersService() {
		return ordersService;
	}

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public WayService getWayService() {
		return wayService;
	}

	public void setWayService(WayService wayService) {
		this.wayService = wayService;
	}

	public StationService getStationService() {
		return stationService;
	}

	public void setStationService(StationService stationService) {
		this.stationService = stationService;
	}

	public VehicleService getVehicleService() {
		return vehicleService;
	}

	public void setVehicleService(VehicleService vehicleService) {
		this.vehicleService = vehicleService;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

}
