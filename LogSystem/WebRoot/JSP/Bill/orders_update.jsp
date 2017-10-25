<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>托付物流管理系统</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css" type="text/css"></link>
<link rel="stylesheet" href="<%=request.getContextPath() %>/js/laydate/need/laydate.css"
	type="text/css"></link>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/css.css" type="text/css"></link>
<link rel="stylesheet" href="css/style.css"></link>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/laydate/laydate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/page.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<script type="text/javascript">

	/* function check(){
		var name = document.form1.name.value;
		document.form1.submit();
	} */
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
</script>
</head>
<jsp:include page="/left_list.jsp" />
<body>

	<div class="right" id="mainFrame">

		<div class="right_cont">
			<ul class="breadcrumb">
				当前位置：
				
				<span class="divider">/</span> 维修订单管理
			</ul>

			<div class="title_right">
				<strong>修改维修订单页面</strong>
			</div>
			<form id="form1" name="form1" method="post" action="ordersAction!update">
			<div style="width:900px;margin:auto;">
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单日期：</td>
						<td width="23%"><input type="text"
							class="laydate-icon span1-1" id="Calendar" value="${list.receivedata}"  name="orders.receivedata"/></td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">出发维修点:</td>
						<td width="23%"><select class="span1-1"
							name="orders.outsetstationid">

								<c:forEach items="${stationlist}" var="p">
								<c:choose>
								<c:when test="${list.outsetstationid  eq  p.id}"><option value="${p.id}" selected="selected">${p.stationName}</option></c:when>
								<c:otherwise><option value="${p.id}" >${p.stationName}</option></c:otherwise>
								</c:choose>
								</c:forEach>
						</select></td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">目的维修点:</td>
						<td><select class="span1-1" name="orders.deststationid">

								<c:forEach items="${stationlist}" var="p">
								<c:choose>
								<c:when test="${list.deststationid  eq  p.id}"><option value="${p.id}" selected="selected">${p.stationName}</option></c:when>
								<c:otherwise><option value="${p.id}" >${p.stationName}</option></c:otherwise>
								</c:choose>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修订单号:</td>
						<td><input type="text"
						 id="ordersId" value="${list.id}"  name="orders.id"/>
						</td>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修线路:</td>
						<td><select class="span1-1" name="orders.way_id">
								<!-- <option>--请选择--</option> -->
								<c:forEach items="${waylist}" var="p">
								<c:choose>
								<c:when test="${list.way_id  eq  p.id}"><option value="${p.id}" selected="selected">${p.name}</option></c:when>
								<c:otherwise><option value="${p.id}" >${p.name}</option></c:otherwise>
								</c:choose>
								</c:forEach>
						</select></td>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单名:</td>
						<td><select class="span1-1" name="orders.vehicleid">

								<c:forEach items="${vehiclelist}" var="p">
								<c:choose>
								<c:when test="${list.vehicleid  eq  p.id}"><option value="${p.id}" selected="selected">${p.vehicleLicense}</option></c:when>
								<c:otherwise><option value="${p.id}" >${p.vehicleLicense}</option></c:otherwise>
								</c:choose>

								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单状态:</td>
						<td><input type="text"
							 id="ordersTatus" value="${list.orderstatus}"  name="orders.orderstatus"/>
							 </td>

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
						<td align="center"><input type="text" value="${list.goodsname}"name="orders.goodsname"
							id="input4" class=" span2" />
						</td>
						<td align="center"><input type="text" value="${list.goodsnumber}"name="orders.goodsnumber"
							id="goodsnumber" class=" span2" />
						</td>

						
						<td align="center"><input type="text"value="${list.goodstotalweight}" name="orders.goodstotalweight"
							id="goodstotalweight" class=" span1 text-center" />
						</td>
						<td align="center"><input type="text" value="${list.goodstotalvolume}"name="orders.goodstotalvolume"
							id="goodstotalvolume" class=" span1 text-center" />
						</td>
						<td align="center"><select class="span1-1"
							name="orders.goodstypeid">
								<c:forEach items="${goodsTypelist}" var="p">
								<c:choose>
								<c:when test="${list.goodstypeid  eq  p.id}"><option value="${p.id}" selected="selected">${p.goodsTypeName}</option></c:when>
								<c:otherwise><option value="${p.id}" >${p.goodsTypeName}</option></c:otherwise>
								</c:choose>
								</c:forEach>
								</select></td>
						<td align="center"><input type="text" value="${list.totalfare}" name="orders.totalfare"
							id="totalfare" class=" span1 text-center" />
							<input type="button" onclick="check();" value="计算维修费用" /></td>

					</tr>
				</table>
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人
							名字:</td>
						<td width="23%"><input type="text" value="${list.sendername} "name="orders.sendername"
							id="input10" class="span1-1" />
						</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人名字:</td>
						<td width="23%"><input type="text" value="${list.addresseename} "name="orders.addresseename"
							id="input14" class="span1-1" />
						</td>
					</tr>
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人
							电话:</td>
						<td width="23%"><input type="text" value="${list.sendermobilephone} "name="orders.sendermobilephone"
							id="input10" class="span1-1" />
						</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人电话:</td>
						<td width="23%"><input type="text" value="${list.addresseemobilephone} "name="orders.addresseemobilephone"
							id="input14" class="span1-1" />
						</td>
					</tr>
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人地址:</td>
						<td><input type="text" value="${list.senderaddress}" name="orders.senderaddress" 
							class="span1-1" />
						</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人地址:</td>
						<td><input type="text" value="${list.addresseeaddress}" name="orders.addresseeaddress" 
							class="span1-1" />
						</td>
					</tr>
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">申请维修人邮箱:</td>
						<td><input type="text" value="${list.senderzipcode}" name="orders.senderzipcode" 
							class="span1-1" />
						</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">维修人邮箱:</td>
						<td><input type="text" value="${list.addresseezipcode}"name="orders.addresseezipcode" 
							class="span1-1" />
						</td>
					</tr>
					<tr>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注:</td>
						<td><input type="text" value="${list.remark}" name="orders.remark" id="input1-1"
							class="span1-1" />
						</td>
					</tr>

				</table>

				<table class="margin-bottom-20  table no-border">
					<tr>
						<td class="text-center">
						<input  value="提交" class="btn btn-info  " style="width:80px;" type="submit" />
						<s:debug/> 
						</td>
						<td class="text-center">
						<input  onclick="window.location='ordersAction!list';" value="返回" class="btn btn-info " style="width:80px;"type="button" />  
						</td>
					</tr>
				</table>

				<div class="alert">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					温馨提示：按“Enter”键进行切换；&nbsp;&nbsp;按“F10”保存；&nbsp;&nbsp;按“F5”代收货款；&nbsp;&nbsp;按“F6”返款；
				</div>

			</div>
		</form>
		</div>
	</div>
	</div>



	<!-- 底部 -->
	<div id="footer">
		版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a
			href="http://www.mycodes.net/" target="_blank">源码之家</a>
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
