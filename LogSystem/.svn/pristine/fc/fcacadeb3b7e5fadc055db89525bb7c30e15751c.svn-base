package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.pojo.Goods;
import com.service.GoodsService;


@Controller
public class GoodsAction extends PageAction {
	
     private Goods goods;
	
	@Resource
	private GoodsService goodsService;


	public GoodsService getGoodsService() {
		return goodsService;
	}
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String list(){
		this.init(goodsService.selCount());
		List<Goods> list=goodsService.selList(this.getCurPage());
		HttpServletRequest req = ServletActionContext.getRequest();
		System.out.println(list.size());
			req.setAttribute("list", list);
		return "list";
	}
	public String add(){
		
		goodsService.add(goods);
		goods=null;
		return list();
	}
	public String del(){
		goodsService.del(goods);
		goods=null;
		return list();
	}
	public String update(){
		goodsService.update(goods);
		goods=null;
		return list();
	}

}
