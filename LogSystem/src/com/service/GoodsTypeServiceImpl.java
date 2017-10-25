package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.GoodsTypeMapper;
import com.pojo.GoodsType;
@Service
public class GoodsTypeServiceImpl implements GoodsTypeService{
	@Autowired
	private GoodsTypeMapper goodsTypeMapper;
	@Override
	public List<GoodsType> getGoodsType() {
		// TODO Auto-generated method stub
		return goodsTypeMapper.selAll();
	}

}
