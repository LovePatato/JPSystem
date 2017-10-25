<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/js/way_detail.js"></script>
</head>

<jsp:include page="/left_list.jsp" />
<body>

<div class="right"  id="mainFrame">
     
     <div class="right_cont">
<ul class="breadcrumb">当前位置：
  <a href="#">首页</a> <span class="divider">/</span>
  路线详情
</ul>
      
   <div class="title_right"><span class="pull-right margin-bottom-5"><a  class="btn btn-info btn-small"  id="modal-9735581" onclick="getStation(${wayid});"href="#modal-container-9735581" role="button" data-toggle="modal"><i class="icon-plus icon-white"></i> 添加站点</a></span><strong>中转站管理</strong></div>

				<div id="modal-container-9735581" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
					style="width:400px; margin-left:-100px; top:20%">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">添加站点</h3>
					</div>
					<form method="post" action="way_detailAction!add">
					<input name="way_detail.way.id" type="hidden"
										value="${wayid}" id="addwayid" class="span1-1" style="width:200px;"/>
					<div class="modal-body">
						<table class="table table-bordered">
							<tbody>
								
								<tr>
									<td align="center">站点名称:</td>
									<td align="center">
									<select name="way_detail.station.id" id="addStation">
									
									</select></td>
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


<table class="table table-bordered table-striped table-hover">
     <tbody>
				
       <tr align="center">
         <td nowrap="nowrap"><strong>编号</strong></td>
         <td nowrap="nowrap"><strong>路线名</strong></td>
         <td nowrap="nowrap"><strong>途经站点</strong></td>
         <td nowrap="nowrap"><strong> 操作 </strong></td>
         </tr>
         <c:forEach items="${list}" var="d">
         
       	<tr align="center">
       	<td nowrap="nowrap">${d.id}</td>
         <td nowrap="nowrap">${d.way.name}</td>
         <td nowrap="nowrap">${d.station.stationName}</td>

         <td width="200" nowrap="nowrap">
        <form hidden="true" id="upWD${d.id}" method="post" action="">
        <input name="way_detail.id" type="hidden"value="${d.id}" />
        <input name="way_detail.way.id" type="hidden"value="${d.way.id}" />
        <input name="way_detail.station.id" type="hidden"value="${d.station.id}" />
        <input name="way_detail.sortId" type="hidden"value="${d.sortId}" />
        </form>
         <input type="button" value="上移" onclick="upAction(${d.id})">&nbsp;&nbsp;</input>
         <input type="button" value="下移" onclick="downAction(${d.id})">&nbsp;&nbsp;</input>
          <a href="way_detailAction!del?way_detail.id=${d.id}">删除</a> </td>
         
         </tr> 
         
         </c:forEach>
     </tbody>
   </table>
   <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="button" value="打印" class="btn btn-info" style="width:80px;" /></td>
     </tr>
 </table>
      
     
<!-- 底部 -->
<div id="footer">版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>
    
    

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


