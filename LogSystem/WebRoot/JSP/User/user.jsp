<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>托付物流管理系统</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/css.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Style.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/laydate/laydate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/mouse_on_out.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/page.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/update.js"></script>
</head>
<jsp:include page="/left_list.jsp" />
<body>

<div class="right"  id="mainFrame">
     
     <div class="right_cont">
<ul class="breadcrumb">当前位置：
  <a href="#">首页</a> <span class="divider">/</span>
 用户管理
</ul>
      
   <div class="title_right"><span class="pull-right margin-bottom-5"><a  class="btn btn-info btn-small"  id="modal-9735581" href="#modal-container-9735581" role="button" data-toggle="modal"><i class="icon-plus icon-white"></i> 添加用户</a></span><strong>用户管理</strong></div>

				<div id="modal-container-9735581" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
					style="width:400px; margin-left:-100px; top:20%">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">添加用户</h3>
					</div>
					<form method="post" action="loginAction!register">
					<div class="modal-body">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td align="center">用户姓名:</td>
									<td align="center"><input name="userInfo.name"
										type="text" id="endTextBox" class="span1-1"
										style="width:200px;" /></td>
								</tr>
								<tr>
									<td align="center">联系方式:</td>
									<td align="center"><input name="userInfo.mobilephone"
										type="text" id="endTextBox" class="span1-1"
										style="width:200px;" /></td>
								</tr>
								<tr>
									<td align="center">地址:</td>
									<td align="center"><input name="userInfo.address"
										type="text" id="endTextBox" class="span1-1"
										style="width:200px;" /></td>
								</tr>
								<tr>
									<td align="center">用户名:</td>
									<td align="center"><input name="userInfo.username"
										type="text" id="manTextBox" class="span1-1"
										style="width:200px;" /></td>
								</tr>
								<tr>
									<td align="center">密码:</td>
									<td align="center"><input name="userInfo.password"
										type="text" id="TextBox1" class="span1-1" style="width:200px;" /></td>
								</tr>

							</tbody>
						</table>

					</div>
					<div class="modal-footer">
						<input type="submit" value="添加" class="btn btn-info"  style="width:80px"/>
						<button class="btn btn-info" data-dismiss="modal"
							aria-hidden="true" style="width:80px">取消</button>
					</div>
					
					</form>
				</div>


	<table class="table table-bordered table-striped " >
    <tbody>
       <tr align="center">
         <td nowrap="nowrap"style="width:7%;"><strong>用户编号</strong></td>
         <td nowrap="nowrap"style="width:17%;"><strong>用户姓名</strong></td>
         <td nowrap="nowrap" style="width:17%;"><strong>联系方式</strong></td>
         <td nowrap="nowrap"style="width:17%;"><strong>地址</strong></td>
         <td nowrap="nowrap"style="width:15%;"><strong>用户名</strong></td>
         <td nowrap="nowrap"style="width:15%;"><strong>密码</strong></td>
         <td width="80" nowrap="nowrap" style="width:12%;"><strong> 操作 </strong></td>
         </tr>
    
         
         <!-- <form method="post" name="u_u" action="loginAction!update"> 
         onmouseout="out(this,5)" onmouseover="over(this,5)"-->
         
         <c:forEach items="${list}" var="u">
       <tr align="center"  >
         <td nowrap="nowrap"style="width:50px;"><input name="userInfo.id" type="text" 
         value="${u.id}" style="display:none;"/>${u.id}</td>
         <td nowrap="nowrap"><input name="userInfo.name" class="edit-text" 
         value="${u.name}" onblur="if (value ==''){value='${u.name}'}" 
         style="display:none;width:100px;" type="text" />
         <span class="view-text">${u.name}</span></td>
         <td nowrap="nowrap"><input name="userInfo.mobilephone" class="edit-text" 
         value="${u.mobilephone}" onblur="if (value ==''){value='${u.mobilephone}'}" 
         style="display:none;width:100px;"type="text" />
         <span class="view-text">${u.mobilephone}</span></td>
         <td nowrap="nowrap"><input name="userInfo.address" class="edit-text"
          value="${u.address}" onblur="if (value ==''){value='${u.address}'}" 
          style="display:none;width:100px;"type="text" />
         <span class="view-text">${u.address}</span></td>
         <td nowrap="nowrap"><input name="userInfo.username" class="edit-text"
          value="${u.username}" onblur="if (value ==''){value='${u.username}'}"
         style="display:none;width:100px;"type="text" />
         <span class="view-text">${u.username}</span></td>
         <td nowrap="nowrap"><input name="userInfo.password" class="edit-text"
          value="${u.password}" onblur="if (value ==''){value='${u.password}'}"
          style="display:none;width:100px;"type="text" />
         <span class="view-text">${u.password}</span></td>
         <td nowrap="nowrap">
         <a  data-toggle="modal" href="#modal-container-007" onclick="setUpdate1(${u.id},'${u.name}',${u.mobilephone},'${u.address}','${u.username}','${u.password}')">编辑</a>
         |<a href="loginAction!del?userInfo.id=${u.id}">删除</a></td>
         </tr> 
         </c:forEach>
         </tbody>
         <!-- </form> -->
         
   </table>
   <table  class="margin-bottom-20 table  no-border" >
       <tr>	
     <div><form name="frm" method="post" action="loginAction!list">
		<input type="hidden" name="curPage" value="${curPage}"/>
	</form>
		共${totalPage}页,总${totalRows}条记录,第${curPage}页&nbsp;&nbsp;
		<a href="javascript:goPage(1)">首页</a>&nbsp;
		<s:if test="curPage>1"><a href="javascript:prePage()">上一页</a></s:if>
		<s:else>上一页</s:else>&nbsp;
		<s:if test="curPage<totalPage"><a href="javascript:nextPage()">下一页</a></s:if>
		<s:else>下一页</s:else>&nbsp;		
		<a href="javascript:goPage(${totalPage})">末页</a>
	</div></tr>
 </table>
      
   </div>
     </div> 
     </div>
<!-- 底部 -->
<div id="footer">版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>
    
   <div id="modal-container-007" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
					style="width:400px; margin-left:-100px; top:20%">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" >×</button>
						<h3 id="myModalLabel">修改用户信息:</h3>
					</div>
					<form method="post" action="stationAction!update">
					<input name="station.id" id="u_id" type="text" style="display:none;"/>
					<div class="modal-body">
						<table class="table table-bordered">
							<tbody>
							<tr>
								<td align="center">用户编号:</td>
								<td align="center"><span id="u-id"></span></td>
							</tr>
							<tr>
								<td align="center">姓名:</td>
								<td align="center"><input name="station.stationName" id="u_name"
								type="text" id="endTextBox" class="span1-1" style="text-align:center;width:100px;border:none;"/> </td>
							</tr>
							<tr>
								<td align="center">联系方式:</td>
								<td align="center"><input name="station.stationPhone" type="text" id="u_phone"
									 id="manTextBox" class="span1-1" style="text-align:center;width:100px;border:none;"/></td>
							</tr>
							<tr>
								<td align="center">地址:</td>
								<td align="center"><input name="station.stationAddress" type="text"id="u_address"
									id="TextBox1" class="span1-1" style="text-align:center;width:100px;border:none;"/></td>
							</tr>
							<tr>
							<td align="center">用户名:</td>
								<td align="center"><input name="station.stationAddress" type="text"id="u_username"
									 id="TextBox1" class="span1-1" style="text-align:center;width:100px;border:none;"/></td>
							</tr>
							<tr>
								<td align="center">密码:</td>
								<td align="center"><input name="station.stationAddress" type="text"id="u_password"
									id="TextBox1" class="span1-1" style="text-align:center;width:100px;border:none;"/></td>
							</tr>
							
							</tbody>
						</table>
						
					</div>
					<div class="modal-footer">
						<input type="submit" value="修改" class="btn btn-info"  style="width:80px"/>
						<button class="btn btn-info" data-dismiss="modal"
							aria-hidden="true" style="width:80px">取消</button>
					</div>
					
					</form>
				</div>  

 <script>
!function(){
laydate.skin('molv');
laydate({elem: '#Calendar'});
laydate.skin('molv');
laydate({elem: '#Calendar2'});
}();

</script>



 
</body>
</html>
