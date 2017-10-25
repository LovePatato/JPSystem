package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.pojo.Orders;

public class OrdersMybatisDao {

	private SqlSessionFactory sqlSessionFactory;
	
	private SqlSessionTemplate sqlSessionTemplate;

	
	/*
	 * 
	 * 分页查询
	 * *
	 */

	@SuppressWarnings("unchecked")
	public List<Orders> getAllorders(Orders orders,PageBounds pageBounds){
		
		SqlSession sqlSession = this.sqlSessionFactory.openSession();
		Map<String,Object> hm = new HashMap<String,Object>();
		
		/*if(orders!=null){
			hm.put("name",orders.getName());
			hm.put("pay",bill.get)
		}*/
		
		List<Orders> list = (List)sqlSession.selectList("orders.selList", hm, pageBounds);
		
		sqlSession.close();
		return list;
		
	}
	
	
	/**
	 * 返回总记录数
	 * @return
	 */
	
	public int getTotalCount(Orders orders){
		
		
		SqlSession sqlSession = this.sqlSessionFactory.openSession();
		int num = (Integer)sqlSession.selectOne("orders.selCount", orders);
		sqlSession.close();
		
		return num;
	}
	
	/**
	 * 新增
	 * @param bill
	 */
	
	public void add(Orders orders){
		//生成主键
		//orders.setId(UUID.randomUUID().toString());
		SqlSession sqlSession = this.sqlSessionFactory.openSession();
		sqlSession.insert("orders.add",orders);
		sqlSession.commit();
		sqlSession.close();
	}
	
	/**
	 * 修改
	 * @param bill
	 */
	public void update(Orders orders){
		this.sqlSessionTemplate.update("orders.update", orders);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	public void del(String id){
		this.sqlSessionTemplate.delete("orders.del",id);
	}
	
	/**
	 * 根据主键加载
	 * @param id
	 * @return
	 */
	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
}
