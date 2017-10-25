package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.action.PageAction;
import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.mapper.UserInfoMapper;
import com.pojo.UserInfo;

@Service
public class UserInfoServiceImpl implements UserInfoService{


	@Autowired
	private UserInfoMapper userInfoMapper;
	
	@Override
	public boolean login(UserInfo userInfo){
		boolean flag = false;
		int num = this.userInfoMapper.selCount(userInfo);
		if(num>0) flag = true;
		return flag;
	} 
	@Override
	public void add(UserInfo userInfo){
		this.userInfoMapper.add(userInfo);
	}
	@Override
	public UserInfo selOne(UserInfo userInfo){
		return this.userInfoMapper.selOne(userInfo);
	}
	@Override
	public List<UserInfo> selList(int curPage) {
		// TODO Auto-generated method stub
		String sortString = "ID, NAME";//如果你想排序的话逗号分隔可以排序多列 
		//mybatis分页类,如果不分页，使用无参构造方法
		PageBounds pageBounds = new PageBounds(curPage, PageAction.PER_PAGE , Order.formString(sortString)); 

		return userInfoMapper.selList(pageBounds);
	}
	public void setUserInfoMapper(UserInfoMapper userInfoMapper) {
		this.userInfoMapper = userInfoMapper;
	}
	public int selCount(){
		return userInfoMapper.selCount(null);
	}
	@Override
	public void del(UserInfo userInfo) {
		// TODO Auto-generated method stub
		userInfoMapper.del(userInfo);
	}
	@Override
	public void update(UserInfo userInfo) {
		// TODO Auto-generated method stub
		userInfoMapper.update(userInfo);
	}

	

	
	
	
	
	
	
}
