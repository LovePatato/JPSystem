package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.Way_detailMapper;
import com.pojo.Way_detail;
@Service
public class Way_detailServiceImpl implements Way_detailService{
	@Autowired
	private Way_detailMapper wdm;
	@Override
	public void del(String id) {
		// TODO �Զ���ɵķ������
		wdm.del(id);
	}

	@Override
	public void update(Way_detail way_detail) {
		// TODO �Զ���ɵķ������
		wdm.update(way_detail);
	}

	@Override
	public List<Way_detail> getList(String id) {
		// TODO �Զ���ɵķ������
		return wdm.selectByWay_Id(id);
	}

	@Override
	public void add(Way_detail way_detail) {
		// TODO 自动生成的方法存根
		wdm.add(way_detail);
	}

	@Override
	public Way_detail selUP(Way_detail way_detail) {
		// TODO 自动生成的方法存根
		return wdm.selUP(way_detail);
	}

	@Override
	public Way_detail selDown(Way_detail way_detail) {
		// TODO 自动生成的方法存根
		return wdm.selDown(way_detail);
	}

	
	

}
