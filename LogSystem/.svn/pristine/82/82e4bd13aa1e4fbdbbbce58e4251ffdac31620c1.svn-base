package com.mapper;

import java.util.List;
import java.util.Map;


import com.github.miemiedev.mybatis.paginator.domain.PageBounds;

import com.pojo.Orders;
//import com.pojo.Way;
import com.pojo.Station;

public interface OrdersMapper {
	
	//图表
	public List<Orders> selList();
	
	//查询总记录数
	public int selCount();
	
	//列表图表全部
	public List<Orders> selOne(int id);
	//删除
	public void del(int id);
	//更新
	public void update(Orders orders);

//	public List<Orders> selIndex(int id);
	//分页
	public List<Orders> selLists(Map hm,PageBounds pageBounds);
	
	
	public void add(Orders orders);
	
	

}
