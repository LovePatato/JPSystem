package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.action.PageAction;
import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.mapper.GoodsMapper;
import com.pojo.Goods;
import com.pojo.GoodsType;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public List<Goods> selList(int curPage) {
		// TODO Auto-generated method stub
		PageBounds pageBounds = new PageBounds(curPage, PageAction.PER_PAGE );
		return goodsMapper.selList(pageBounds);
		
	}

	@Override
	public void add(Goods goods) {
		// TODO Auto-generated method stub
		goodsMapper.add(goods);
	}

	@Override
	public void del(Goods goods) {
		// TODO Auto-generated method stub
		goodsMapper.del(goods);
	}

	@Override
	public void update(Goods goods) {
		// TODO Auto-generated method stub
		goodsMapper.update(goods);
		
	}

	@Override
	public int selCount() {
		// TODO Auto-generated method stub
		return goodsMapper.selCount();
	}

	@Override
	public List<Goods> getGoods() {
		// TODO Auto-generated method stub
		return goodsMapper.selAll();
	}

}
