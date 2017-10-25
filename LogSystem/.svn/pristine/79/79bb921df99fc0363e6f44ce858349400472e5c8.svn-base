package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.action.PageAction;
import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.mapper.WayMapper;
import com.pojo.Way;
@Service
public class WayServiceImpl implements WayService {

	@Autowired
	private WayMapper waymapper;
	

	
	public List<Way> getAllWay(int curPage,Way way) {
		String sortString = "ID";
		Map<String,Object> hm = new HashMap<String,Object>();
		if(way != null){
		hm.put("id",way.getId());
		hm.put("startStationname",way.getStartStation().getStationName());
		hm.put("endStationname",way.getEndStation().getStationName());
		hm.put("name", way.getName());
		}
		PageBounds pageBounds = new PageBounds(curPage, PageAction.PER_PAGE , Order.formString(sortString));
		return waymapper.selectAll(pageBounds,hm);
	}



	public void addway(Way way) {
		// TODO ï¿½Ô¶ï¿½ï¿½ï¿½ÉµÄ·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
	     waymapper.add(way);
	}



	public void update(Way way) {
		// TODO ï¿½Ô¶ï¿½ï¿½ï¿½ÉµÄ·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
		waymapper.update(way);
	}



	public void del(String id) {
		// TODO ï¿½Ô¶ï¿½ï¿½ï¿½ÉµÄ·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
		waymapper.del(id);
	}



	
	public Way getWay(String id) {
		return waymapper.selOne(id);
		// TODO ï¿½Ô¶ï¿½ï¿½ï¿½ÉµÄ·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
		
	}


	@Override
	public List<Way> getWay() {
		// TODO Auto-generated method stub
		return waymapper.selAllList();
	}





	public int selCount(Way way) {
		// TODO ×Ô¶¯Éú³ÉµÄ·½·¨´æ¸ù
		Map<String,Object> hm = new HashMap<String,Object>();
		if(way != null){
		hm.put("id",way.getId());
		hm.put("startStationname",way.getStartStation().getStationName());
		hm.put("endStationname",way.getEndStation().getStationName());
		hm.put("name", way.getName());
		}
		return waymapper.selCount(hm);
		
	}




	@Override
	public List<Way> getStationId(String id) {
		// TODO Auto-generated method stub
		return waymapper.selOneWay(id);
	}



}
