<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<title>My JSP 'Billpage.jsp' starting page</title>

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

<script type="text/javascript" src="../../js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="../../js/sdmenu.js"></script>
<script type="text/javascript" src="../../js/laydate/laydate.js"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>

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

				<span class="divider">/</span> 订单状态管理
			</ul>
			<div class="title_right">
				<span class="pull-right margin-bottom-5"><a
					class="btn btn-info btn-small" id="modal-9735581"
					href="#modal-container-9735581" role="button" data-toggle="modal"><i
						class="icon-plus icon-white"></i> 添加订单</a> </span><strong>订单管理</strong>
			</div>
			<div class="title_right">
				<strong>订单编辑</strong>
			</div>

			<div style="width:900px;margin:auto;">
				<form method="post" action="ordersAction!add">
					<div style="width:900px;margin:auto;">
						<!-- <div class="modal-body"> -->

						<table class="table table-bordered">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单日期：</td>
								<td width="23%"><input type="text"
									class="laydate-icon span1-1" id="Calendar" value="" />
								</td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">始发配送点:</td>
								<td width="23%"><select class="span1-1"
									name="orders.outsetstationid">
										<option value="">--请选择--</option>
										<c:forEach items="${stationlist}" var="p">

											<option value="${p.id}">${p.stationName}</option>

										</c:forEach>
								</select>
								</td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">目的配送点:</td>
								<td width="23%"><select class="span1-1"
									name="orders.deststationid">
										<option value="">--请选择--</option>
										<c:forEach items="${stationlist}" var="p">

											<option value="${p.id}">${p.stationName}</option>

										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单号:</td>
								<td><input type="text" name="orders.id" id=""
									class="span1-1" value="" />
								</td>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">线路:</td>
								<td><select class="span1-1" name="orders.way_id">
										<option value="">--请选择--</option>
										<c:forEach items="${waylist}" var="p">

											<option value="${p.id}">${p.name}</option>

										</c:forEach>
								</select>
								</td>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">承运车辆:</td>
								<td width="23%"><select class="span1-1"
									name="orders.vehicleid">
										<option value="">--请选择--</option>
										<c:forEach items="${vehiclelist}" var="p">

											<option value="${p.id}">${p.vehicleLicense}</option>

										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">订单状态:</td>
								<td><input type="text" name="orders.orderstatus" id=""
									class="span1-1" value="" />
								</td>
							</tr>
						</table>
						<table class="table table-bordered">
							<tr>
								<td align="center" bgcolor="#f1f1f1"><strong>货物名称</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>货物数量</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>货物总重量</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>货物总体积</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>物品种类ID</strong>
								</td>
								<td align="center" bgcolor="#f1f1f1"><strong>运费</strong>
								</td>


							</tr>
							<tr>
								<td align="center"><input type="text"
									name="orders.goodsname" id="input4" class=" span2" value="" />
								</td>
								<td align="center"><input type="text"
									name="orders.goodsnumber" id="input4" class=" span2" value="" />
								</td>
								<td align="center"><input type="text"
									name="orders.goodstotalweight" id="input5"
									class=" span1 text-center" value="" />
								</td>
								<td align="center"><input type="text"
									name="orders.goodstotalvolume" id="input6"
									class=" span1 text-center" value="" />
								</td>
								<td align="center"><select class="span1-1"
									name="orders.goodstypeid">
										<option value="">--请选择--</option>
										<c:forEach items="${goodsTypelist}" var="p">

											<option value="${p.id}">${p.goodsTypeName}</option>

										</c:forEach>
								</select>
								</td>
								<td align="center"><input type="text"
									name="orders.totalfare" id="input8" class=" span1 text-center"
									value="" />
								</td>


							</tr>
						</table>
						<table class="table table-bordered">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">寄件人
									名字:</td>
								<td width="23%"><input type="text"
									name="orders.sendername " id="input10" class="span1-1" value="" />
								</td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">收件人名字:</td>
								<td width="23%"><input type="text"
									name="orders.addresseename" id="input14" class="span1-1"
									value="" />
								</td>
							</tr>
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">寄件人
									电话:</td>
								<td width="23%"><input type="text"
									name="orders.sendermobilephone" id="input10" class="span1-1"
									value="" />
								</td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">收件人电话:</td>
								<td width="23%"><input type="text"
									name="orders.addresseemobilephone" id="input14" class="span1-1"
									value="" />
								</td>
							</tr>
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">寄件人地址:</td>
								<td><input type="text" name="orders.senderaddress"
									id="input15" class="span1-1" value="" />
								</td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">收件人地址:</td>
								<td><input type="text" name="orders.addresseeaddress"
									id="input15" class="span1-1" value="" />
								</td>
							</tr>
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">寄件人邮箱:</td>
								<td><input type="text" name="orders.senderzipcode"
									id="input15" class="span1-1" value="" />
								</td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">收件人邮箱:</td>
								<td><input type="text" name="orders.addresseezipcode"
									id="input15" class="span1-1" value="" />
								</td>
							</tr>
							<tr>
								<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注：</td>
								<td colspan="5" nowrap="nowrap"><input type="text"
									name="orders.remark" id="input9" class="span10" value="" /></td>
							</tr>

						</table>

						<table class="margin-bottom-20  table no-border">
							<tr>
								<td class="text-center"><input type="submit" value="添加订单"
									class="btn btn-info  " onclick="" style="width:80px;" /></td>
							</tr>
						</table>
					</div>
				</form>
				</div>
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
		}();
	</script>




</body>
</html>
