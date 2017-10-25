<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>托付物流管理系统</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="../../css/bootstrap.css" type="text/css"></link>
<link rel="stylesheet" href="../../js/laydate/need/laydate.css"
	type="text/css"></link>
<link rel="stylesheet" href="../../css/css.css" type="text/css"></link>

<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-3.0.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/sdmenu.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/laydate/laydate.js"></script>

<script type="text/javascript">
//跳转到Page页
	function goPage(page) {
		document.frm.curPage.value = page;
		document.frm.submit();
	}

	//上一页
	function prePage() {
		document.frm.curPage.value = parseInt(document.frm.curPage.value) - 1;
		document.frm.submit();
	}

	//下一页
	function nextPage() {
		document.frm.curPage.value = parseInt(document.frm.curPage.value) + 1;
		document.frm.submit();
	}

	//把当前页重置提交
	function query() {

		document.frm.curPage.value = 1;
		document.frm.submit();
	}
	
	
	//计算总费用
	function check() {

		var goodsN = document.getElementById("goodsnumber").value;

		var goodsW = document.getElementById("goodstotalweight").value;

		var goodsT = document.getElementById("goodstotalvolume").value;
		
		
		
		var reg = /^-?\d+\.\d+$|^[0-9]+$/;
		//正则式判断输入的是否为数字

		if (goodsN == "") {
			alert("请输入物品数量");
		} else {

			if (goodsW == "") {
				alert("请输入物品总重量");
			}

			if (goodsT == "") {
				alert("请输入物品总体积");
			}

		}
		if (!reg.test(goodsN)) {
			alert("请输入正确的物品数字例如 123.3||233");
		} 
		if (!reg.test(goodsW)) {
			alert("请输入正确的重量数字 例如 123.3||233");
		} 
		if (!reg.test(goodsT)) {
			alert("请输入正确的体积数字 例如 123.3||233");
		} 
		
		
		//var result = document.getElementById("totalfare").value;
		if(goodsN<10&&goodsW<10&&goodsT<10){
	
			document.getElementById("totalfare").value = parseFloat(goodsN)*10+parseFloat(goodsW)*7+parseFloat(goodsT)*8;
			
			//alert(document.getElementById("totalfare").value);
		}if(goodsN>10&&goodsW<10&&goodsT<10){
			
			document.getElementById("totalfare").value = parseFloat(goodsN)*11+parseFloat(goodsW)*7+parseFloat(goodsT)*8;
		
		}if(goodsN>10&&goodsW>10&&goodsT<10){
			
			document.getElementById("totalfare").value = parseFloat(goodsN)*11+parseFloat(goodsW)*8+parseFloat(goodsT)*8;
		
		}if(goodsN<10&&goodsW>10&&goodsT>10){
			
			document.getElementById("totalfare").value = parseFloat(goodsN)*11+parseFloat(goodsW)*8+parseFloat(goodsT)*9;
		
		}if(goodsN>10&&goodsW>10&&goodsT>10){
			
			document.getElementById("totalfare").value = parseFloat(goodsN)*11+parseFloat(goodsW)*8+parseFloat(goodsT)*9;
		}

	}
	//利用json返回路线的查询
	function selWay(){
		
		var station = $('#station').val();
		
		var url = "ordersAction!selWay";
		//清楚所哟开始和结束地点的数据
		var objs = $('#startstation')[0];
		objs.options.length = 1;
		
		var obje = $('#endstation')[0];
		obje.options.length = 1;
		
		
		$.getJSON(url,{id:station},function(result,status){
		//遍历所有的路线
		
			console.log(result);
			
			console.log(status);
			
			$.each(result,function(index,data){
			
				//将线路开始和结束的地点添加到下拉框中
				console(data.startId);
				objs.options.add(new Option(data.startStationName,data.startId));
				
				obje.options.add(new Option(data.endStationName,data.endId));
				
				
			});
			
			
		});
		
		alert("this is test!");
	}
</script>




<style type="text/css">
.menu {
	position: relative;
	left: 30px;
	top: 5px;
}
</style>
</head>
<jsp:include page="/left_list.jsp" />
<body>



	<div class="right" id="mainFrame">

		<div class="right_cont">
			<ul class="breadcrumb">
				当前位置：
				<a href="#">首页</a>
				<span class="divider"></span>

				<span class="divider">/</span> 订单列表管理
			</ul>
			<div class="title_right">
				<span class="pull-right margin-bottom-5"><a
					class="btn btn-info btn-small" id="modal-9735581"
					href="#modal-container-9735581" role="button" data-toggle="modal"><i
						class="icon-plus icon-white"></i> 添加维修订单</a> </span><strong>维修订单管理</strong>
			</div>
			<div id="modal-container-9735581" class="modal hide fade"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
				style="width:1000px; margin-left:-500px; top:10%">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">添加维修订单</h3>
				</div>
				<form method="post" action="ordersAction!add">
					<div style="width:900px;margin:auto;">
						<!-- <div class="modal-body"> -->
						<table class="table table-bordered">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单日期：</td>
								<td width="23%"><input type="text"
									class="laydate-icon span1-1" id="Calendar" value="" /></td>
									
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单线路:</td>
								<td><select class="span1-1" name="orders.way_id" onchange="selWay();" id="station">
										<option value="">--请选择--</option>
										<c:forEach items="${waylist}" var="p">

											<option value="${p.id}">${p.name}</option>

										</c:forEach>
								</select></td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">出发维修点:</td>
								<td width="23%"><select class="span1-1"
									name="orders.outsetstationid" id="startstation">
										<option value="">--请选择--</option>
										<%-- <c:forEach items="${stationlist}" var="p">

											<option value="${p.id}">${p.stationName}</option>

										</c:forEach> --%>
								</select></td>
								
							</tr>
							<tr>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修订单号:</td>
								<td><input type="text" name="orders.id" id=""
									class="span1-1" value="" /></td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">目的维修点:</td>
								<td width="23%"><select class="span1-1"
									name="orders.deststationid" id="endstation">
										<!-- <option value="">--请选择--</option> -->
										<%-- <c:forEach items="${stationlist}" var="p">

											<option value="${p.id}">${p.stationName}</option>

										</c:forEach> --%>
								</select></td>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单名称:</td>
								<td width="23%"><select class="span1-1"
									name="orders.vehicleid">
										<option value="">--请选择--</option>
										<c:forEach items="${vehiclelist}" var="p">

											<option value="${p.id}">${p.vehicleLicense}</option>

										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单状态:</td>
								<td><input type="text" name="orders.orderstatus" id=""
									class="span1-1" value="" /></td>
							</tr>
						</table>
						<table class="table table-bordered">
							<tr>
								<td align="center" bgcolor="#f1f1f1"><strong>维修物名称</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>维修数量</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>维修人员数</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>维修耗时</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>维修种类ID</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>总费用</strong></td>
							</tr>
							<tr>
								<td align="center"><input type="text"
									name="orders.goodsname" id="input4" class=" span2" /></td>
								<td align="center"><input type="text"
									name="orders.goodsnumber" id="goodsnumber" class=" span2"
									value="" /></td>
								<td align="center"><input type="text"
									name="orders.goodstotalweight" id="goodstotalweight"
									class=" span1 text-center" value="" /></td>
								<td align="center"><input type="text"
									name="orders.goodstotalvolume" id="goodstotalvolume"
									class=" span1 text-center" value="" /></td>
								<td align="center"><select class="span1-1"
									name="orders.goodstypeid">
										<option value="">--请选择--</option>
										<c:forEach items="${goodsTypelist}" var="p">

											<option value="${p.id}">${p.goodsTypeName}</option>

										</c:forEach>
								</select></td>
								<td align="center"><input type="text"
									name="orders.totalfare" id="totalfare" class=" span2" value="" />
									<input type="button" onclick="check();" value="计算总费用" /></td>

								<!-- span1 text-center -->
							</tr>
						</table>
						<table class="table table-bordered">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人
									名字:</td>
								<td width="23%"><input type="text"
									name="orders.sendername " id="input10" class="span1-1" value="" />
								</td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人名字:</td>
								<td width="23%"><input type="text"
									name="orders.addresseename" id="input14" class="span1-1"
									value="" /></td>
							</tr>
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人电话:</td>
								<td width="23%"><input type="text"
									name="orders.sendermobilephone" id="input10" class="span1-1"
									value="" /></td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人电话:</td>
								<td width="23%"><input type="text"
									name="orders.addresseemobilephone" id="input14" class="span1-1"
									value="" /></td>
							</tr>
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人地址:</td>
								<td><input type="text" name="orders.senderaddress"
									id="input15" class="span1-1" value="" /></td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人地址:</td>
								<td><input type="text" name="orders.addresseeaddress"
									id="input15" class="span1-1" value="" /></td>
							</tr>
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人邮箱:</td>
								<td><input type="text" name="orders.senderzipcode"
									id="input15" class="span1-1" value="" /></td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人邮箱:</td>
								<td><input type="text" name="orders.addresseezipcode"
									id="input15" class="span1-1" value="" /></td>
							</tr>
							<tr>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注：</td>
								<td colspan="5" nowrap="nowrap"><input type="text"
									name="orders.remark" id="input9" class="span10" value="" />
								</td>
							</tr>

						</table>

						<table class="margin-bottom-20  table no-border">
							<tr>
								<td class="text-center"><input type="submit" value="添加维修订单"
									class="btn btn-info"  style="width:100px;" />
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
		<form name="frm" method="post" action="ordersAction!list">
			<div class="menu">

				订单日期：
				<input type="text" name="orders.receivedata"
				class="laydate-icon span1-1" id="Calendar3" value="${o.receivedata }" />
				 &nbsp;&nbsp; 订单状态：<select name="orders.orderstatus">
					<option value="">--请选择--</option>
					<c:choose>
						<c:when test="${o.orderstatus eq '已维修'}"><option value="已维修" selected="selected">已维修</option></c:when>
						<c:otherwise><option value="已收货">已维修</option></c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${o.orderstatus eq '正维修'}"><option value="正维修" selected="selected">正维修</option></c:when>
						<c:otherwise><option value="已发货">正维修</option></c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${o.orderstatus eq '待维修'}"><option value="待维修" selected="selected">待维修</option></c:when>
						<c:otherwise><option value="运输中">待维修</option></c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${o.orderstatus eq '未维修'}"><option value="未维修" selected="selected">未维修</option></c:when>
						<c:otherwise><option value="已签收">未维修</option></c:otherwise>
					</c:choose>
					
					
					
				</select>&nbsp;&nbsp; <input type="button" value="查询" style="width:80px"
					class="btn btn-info" onclick="query();" /> <input type="hidden"
					name="curPage" value="${curPage}" />

			</div>
		</form>
		<table class="table table-bordered table-striped table-hover">
			<tbody>
				<tr align="center">
					<td nowrap="nowrap"><strong>订单号</strong>
					</td>
					<td nowrap="nowrap"><strong>出发维修地</strong>
					</td>
					<td nowrap="nowrap"><strong>目的维修地</strong>
					</td>
					<td nowrap="nowrap"><strong>订单状态</strong>
					</td>
					<td nowrap="nowrap"><strong>订单日期</strong>
					</td>
					<td><strong>维修名称</strong>
					</td>
					<td><strong>维修种类</strong>
					</td>
					<td><strong>总费用</strong>
					</td>
					<td><strong>声请维修人姓名</strong>
					</td>
					<td nowrap="nowrap"><strong>维修人地址</strong>
					</td>
					<td><strong>联系电话</strong>
					
					<td nowrap="nowrap"><strong>备注</strong>
					</td>
					<td width="80" nowrap="nowrap"><strong> 操作 </strong>
					</td>
				</tr>
				<c:forEach items="${list}" var="order" varStatus="status">
					<tr align="center">
						<td>${order.id}</td>
						<td>${order.outsetstationid}</td>
						<td>${order.deststationid}</td>
						<td>${order.orderstatus}</td>
						<td>${order.receivedata}</td>
						<td>${order.goodsname}</td>
						<td>${order.goodstypeid}</td>
						<td>${order.totalfare}</td>
						<td>${order.sendername}</td>
						<td>${order.senderaddress}</td>
						
						<td>${order.sendermobilephone}</td>
						<td>${order.remark}</td>
						<td nowrap="nowrap"><a
							href="ordersAction!del?orders.id=${order.id}">删除</a> <a
							href="ordersAction!selOne?orders.id=${order.id}">编辑</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			共${totalPage}页&nbsp;&nbsp;,总${totalRows}条记录&nbsp;&nbsp;,第${curPage}页&nbsp;&nbsp;
			<a href="javascript:goPage(1)">首页</a>&nbsp;
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
	</div>
	<!-- 底部 -->
	<div id="footer"></div>

	<script>
		!function() {
			laydate.skin('molv');
			laydate({
				elem : '#Calendar'
			});
			laydate.skin('molv');
			laydate({
				elem : '#Calendar2'
			});
			laydate.skin('molv');
			laydate({
				elem : '#Calendar3'
			});
		}();
	</script>
</body>
</html>