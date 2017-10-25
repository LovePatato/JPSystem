package com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pojo.UserInfo;

public class UserInfoDao {
	
	private SqlSessionFactory sqlSessionFactory;
	
	public boolean login(UserInfo userInfo){
		
		boolean flag = false;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int num = (Integer)sqlSession.selectOne("UserInfo.selCount", userInfo);
		if(num>0) flag = true;
		sqlSession.close();
		return flag;
		
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	

}
