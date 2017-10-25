<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>托付物流管理系统</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/css.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/laydate/laydate.js"></script>
<script type="text/javascript"src="<%=request.getContextPath() %>/js/mouse_on_out.js"></script>
<script type="text/javascript"src="<%=request.getContextPath() %>/js/page.js"></script>
<script type="text/javascript"src="<%=request.getContextPath() %>/js/update.js"></script>


</head>


<jsp:include page="/left_list.jsp" />
<body>


<div class="right"  id="mainFrame">
     
     <div class="right_cont">
<ul class="breadcrumb">当前位置：
  <a href="#">首页</a> <span class="divider">/</span>
  路线管理
</ul>
      
   <div class="title_right"><span class="pull-right margin-bottom-5"><a  class="btn btn-info btn-small"  id="modal-9735581" href="#modal-container-9735581" onclick="getStation();"role="button" data-toggle="modal"><i class="icon-plus icon-white"></i> 添加路线</a></span><strong>路线管理</strong></div>

				<div id="modal-container-9735581" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
					style="width:400px; margin-left:-100px; top:20%">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" >×</button>
						<h3 id="myModalLabel">添加路线</h3>
					</div>
					<form method="post" action="wayAction!add">
					<div class="modal-body">
						<table class="table table-bordered">
							<tbody>
							
								<tr>
									<td align="center">始发站:</td>
									<td align="center">
									<select name="way.startStation.id" id="addstartStation">
									
									</select></td>
								</tr>
								<tr>
									<td align="center">终点站:</td>
									<td align="center">
									<select name="way.endStation.id" id="addendStation">
									</select></td>
								</tr>
							<tr>
									<td align="center">路线名称:</td>
									<td align="center"><input name="way.name" type="text"
										id="addname" class="span1-1" style="width:200px;" onclick="setWayName();"/></td>
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
 <form id="selById" method="post" action="wayAction!list">
 <table class="table table-bordered table-striped table-hover">
 <tr><td>
	  	编号：<input type="text" name="way.id" class="span1-1" style="width:150px;"></input></td>
	 <td>
	  	始发站：<input type="text" name="way.startStation.stationName" class="span1-1" style="width:150px;"></input></td>
	  <td>
	  	终点站：<input type="text" name="way.endStation.stationName" class="span1-1" style="width:150px;"></input></td>
	  <td>
	  	路线名称：<input type="text" name="way.name" class="span1-1" style="width:150px;"></input></td>
	  <td>
	  	<input type="submit" style="width:150px;" value="查询"></input></td>
	  </tr>
	  
	  </table>
	  </form>
	  

<table class="table table-bordered table-striped table-hover">
     <tbody>
				
       <tr align="center">
         <td nowrap="nowrap"><strong>路线编号</strong></td>
         <td nowrap="nowrap"><strong>始发站</strong></td>
         <td nowrap="nowrap"><strong>终点站</strong></td>
         <td nowrap="nowrap"><strong>路线名称</strong></td>
         <td nowrap="nowrap"><strong> 操作 </strong></td>
         </tr>
         <c:forEach items="${list}" var="w">
       <tr align="center">
         <td nowrap="nowrap">${w.id}</td>
         <td nowrap="nowrap">${w.startStation.stationName}</td>
         <td nowrap="nowrap">${w.endStation.stationName}</td>
         <td nowrap="nowrap">${w.name}</td>
         <td width="200" nowrap="nowrap"><a href="way_detailAction!list?way.id=${w.id}">查看详情</a>
         <a id ="modal-006" role="button" data-toggle="modal" href="javascript:void(0)" onclick= "setUpdate('${w.id}','${w.startStation.id}','${w.endStation.id}','${w.name}')">编辑</a>
         <a href="wayAction!del?way.id=${w.id}">删除</a> </td>
         </tr> 
         </c:forEach>
     </tbody>
   </table>
   <div>
				<form name="frm" method="post" action="wayAction!list">
					<input type="hidden" name="curPage" value="${curPage}" />
				</form>
				共${totalPage}页,总${totalRows}条记录,第${curPage}页&nbsp;&nbsp; <a
					href="javascript:goPage(1)">首页</a>&nbsp;
				<s:if test="curPage>1">
					<a href="javascript:prePage()">上一页</a>
				</s:if>
				<s:else>上一页</s:else>
				&nbsp;
				<s:if test="curPage<totalPage">
					<a href="javascript:nextPage()">下一页</a>
				</s:if>
				<s:else>下一页</s:else>
				&nbsp; <a href="javascript:goPage(${totalPage})">末页</a>
			</div>
   
   <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="button" value="打印" class="btn btn-info" style="width:80px;" /></td>
     </tr>
 </table>
      
   </div>
     </div> 
     </div>
<!-- 底部 -->
<div id="footer">版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>


<div id="modal-container-006" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
					style="width:400px; margin-left:-100px; top:20%">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" >×</button>
						<h3 id="myModalLabel">编辑路线</h3>
					</div>
					
					<form id="updateWay" method="post" action="">
					<div class="modal-body">
						<table class="table table-bordered">
							<tbody>
								
								<tr>
									<td align="center">路线编号:</td>
									<td align="center"><input name="way.id" type="text"
										id="updateid" class="span1-1" readonly="true" style="width:200px;" /> </td>
								</tr>
								
								<tr>
									<td align="center">始发站:</td>
									<td align="center">
									<select name="way.startStation.id" id="updatestartStation">
									
									</select></td>
								</tr>
<!-- 								<tr> -->
<!-- 									<td align="center">站:</td> -->
<!-- 									<td align="center"><input name="way.id" type="text" -->
<!-- 										id="updateSS" class="span1-1" style="width:200px;" /> </td> -->
<!-- 								</tr> -->
								<tr>
									<td align="center">终点站:</td>
									<td align="center">
									<select name="way.endStation.id" id="updateendStation">
									</select></td>
								</tr>
<!-- 								<tr> -->
<!-- 									<td align="center">站:</td> -->
<!-- 									<td align="center"><input name="way.id" type="text" -->
<!-- 										id="updateES" class="span1-1" style="width:200px;" /> </td> -->
<!-- 								</tr> -->
							<tr>
									<td align="center">路线名称:</td>
									<td align="center"><input name="way.name" type="text"
										id="updatename" class="span1-1" style="width:200px;" onclick="setWayName1();"/></td>
								</tr>
							</tbody>
						</table>
						
					</div>
					<div class="modal-footer">
						<input type="submit" value="提交" onclick="setAction();" class="btn btn-info"  style="width:80px"/>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jsj.js"></script>


 
</body>
</html>


