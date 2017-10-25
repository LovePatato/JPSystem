package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;






import com.action.PageAction;
import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.mapper.StationMapper;
import com.pojo.Station;

@Service
public class StationServiceImpl implements StationService{


	@Autowired
	private StationMapper stationMapper;

	@Override
	public List<Station> selList(int curPage) {
		// TODO Auto-generated method stub

		String sortString = "ID, STATIONNAME";//�����������Ļ����ŷָ������������ 
		//mybatis��ҳ��,����ҳ��ʹ���޲ι��췽��

		PageBounds pageBounds = new PageBounds(curPage, PageAction.PER_PAGE , Order.formString(sortString));
		return stationMapper.selList(pageBounds);
	}

	@Override
	public void add(Station station) {
		// TODO Auto-generated method stub
		stationMapper.add(station);
	}

	@Override
	public void del(Station station) {
		// TODO Auto-generated method stub
		stationMapper.del(station);
	}
	public void update(Station station){
		stationMapper.update(station);
	}
	public int selCount(){
		return stationMapper.selCount();
	}

	@Override
	public List<Station> getStation() {
		// TODO Auto-generated method stub
		return stationMapper.selAllList();
	}

	@Override
	public List<Station> getWDStation(String id) {
		// TODO 自动生成的方法存根
		return stationMapper.getWDList(id);
	}
	

	
	
	
	
	
	
}
