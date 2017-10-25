package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Station;
import com.pojo.UserInfo;
import com.service.UserInfoService;

@Controller

public class LoginAction extends PageAction{

	private UserInfo userInfo;
	
	@Resource
	private UserInfoService userInfoService;
	
	/**
	 * 鐧诲綍
	 * @return
	 */
	public String login(){
		
		//根据前台数据进行request请求
		HttpServletRequest req = ServletActionContext.getRequest();
		//UserInfoDao ud = new UserInfoDao();
		if(userInfoService.login(userInfo)){//判断输入信息是否正确
			
			HttpSession session = req.getSession();
			session.setAttribute("user", userInfo);
			return "main";
		}
		this.addActionMessage("登陆成功");
		return "login";
	}
	
	/**
	 * 退出登录请求跳转
	 * @return
	 */
	public String logOut(){
		HttpServletRequest req = ServletActionContext.getRequest();
		req.getSession().removeAttribute("user");
		return "login";
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String register(){
		userInfoService.add(userInfo);
		return list();
	}
	public String del(){
		userInfoService.del(userInfo);
		return list();
	}
	public String update(){
		userInfoService.update(userInfo);
		return list();
	}
	public String list(){
		this.init(userInfoService.selCount());
		List<UserInfo> list=userInfoService.selList(this.getCurPage());
		HttpServletRequest req = ServletActionContext.getRequest();
		System.out.println(list.size());
		//
		req.setAttribute("list", list);
		return "list";
	}
	

	
	
	
}
