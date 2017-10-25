package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Way;
import com.pojo.Way_detail;
import com.service.Way_detailService;
@Controller
public class Way_detailAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Way_detail way_detail;
	private Way way;
	@Resource
	private Way_detailService way_detailService;
	
	/**
	 * ALL
	 * @return
	 */
	public String list(){

		List<Way_detail> list =way_detailService.getList(way.getId());
		HttpServletRequest req = ServletActionContext.getRequest();
		//��list����request������
		req.setAttribute("list", list);
		req.setAttribute("wayid", way.getId());
		return "list";
	}
	public String add(){
		way_detailService.add(way_detail);
		way_detail = new Way_detail();
		return "add";
	}
	/**
	 * �޸�
	 * @return
	 */
	public String upWD(){
		
		Way_detail uWD=way_detailService.selUP(way_detail);
		System.out.println(uWD);
		String sid=uWD.getSortId();
		
		uWD.setSortId(way_detail.getSortId());
		
		way_detail.setSortId(sid);
		System.out.println(way_detail);
		System.out.println(uWD);
		way_detailService.update(way_detail);
		
		way_detailService.update(uWD);
		
		way_detail = new Way_detail();
		uWD=new Way_detail();
		return "update";
	}
	public String downWD(){
		
		Way_detail uWD=way_detailService.selDown(way_detail);
		System.out.println(uWD);
		String sid=uWD.getSortId();
		
		uWD.setSortId(way_detail.getSortId());
		
		way_detail.setSortId(sid);
		System.out.println(way_detail);
		System.out.println(uWD);
		way_detailService.update(way_detail);
		
		way_detailService.update(uWD);
		
		way_detail = new Way_detail();
		uWD=new Way_detail();
		return "update";
	}
	
	/**
	 * ɾ��
	 * @return
	 */
	public String del(){
		way_detailService.del(way_detail.getId());
		way_detail = new Way_detail();
		return "del";
	}
	
	
	
	public Way_detail getWay_detail() {
		return way_detail;
	}
    
	public void setWay_detail(Way_detail way) {
		this.way_detail = way;
	}
	public Way getWay() {
		return way;
	}
	public void setWay(Way way) {
		this.way = way;
	}
}
