package com.action;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import com.pojo.Station;
import com.pojo.Way;
import com.service.WayService;

@Controller

public class WayAction extends PageAction {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Way way;
	@Resource
	private WayService wayService;
	
   
	/**
	 * ALL
	 * @return
	 */
	public String list(){
		this.init(wayService.selCount(way));
		List<Way> list=wayService.getAllWay(this.getCurPage(),way);
		HttpServletRequest req = ServletActionContext.getRequest();
		System.out.println(list.size());

		System.out.println(list);

		req.setAttribute("list", list);
		way = null;
		return "list";
		/*List<Way> list =wayService.getAllWay();
		HttpServletRequest req = ServletActionContext.getRequest();
		//��list����request������
		req.setAttribute("list", list);
		return "list";*/
	}
	public String add(){
		wayService.addway(way);
		way = null;
		return "add";
	}
	/**
	 * �޸�
	 * @return
	 */
	public String update(){
		
		wayService.update(way);
		way = null;
		return "update";
	}
	
	/**
	 * ɾ��
	 * @return
	 */
	public String del(){
		wayService.del(way.getId());
		way = null;
		return "del";
	}
	
	
	
	public Way getWay() {
		return way;
	}
    
	public void setWay(Way way) {
		this.way = way;
	}
	
}
