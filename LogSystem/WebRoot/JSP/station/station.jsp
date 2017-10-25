<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>托付物流管理系统</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/css.css" />
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-3.0.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/sdmenu.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/laydate/laydate.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/mouse_on_out.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/page.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/update.js"></script>

</head>
<jsp:include page="/left_list.jsp" />
<body>
	<div class="right" id="mainFrame">

		<div class="right_cont">
			<ul class="breadcrumb">
				当前位置：
				<a href="#">首页</a>
				<span class="divider">/</span> 维修人员管理
			</ul>

			<div class="title_right">
				<span class="pull-right margin-bottom-5"> <a
					class="btn btn-info btn-small" id="modal-9735581"
					href="#modal-container-9735581" role="button" data-toggle="modal"><i
						class="icon-plus icon-white"></i> 添加维修人员</a> </span><strong>维修人员管理</strong>
			</div>

			<div id="modal-container-9735581" class="modal hide fade"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
				style="width:400px; margin-left:-100px; top:20%">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">添加维修人员</h3>
				</div>
				<form method="post" action="stationAction!add">
					<div class="modal-body">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td align="center">维修人名称:</td>
									<td align="center"><input name="station.stationName"
										type="text" id="endTextBox" class="span1-1"
										style="width:200px;" /></td>
								</tr>
								<tr>
									<td align="center">联系方式:</td>
									<td align="center"><input name="station.stationPhone"
										type="text" id="manTextBox" class="span1-1"
										style="width:200px;" />
									</td>
								</tr>
								<tr>
									<td align="center">地址:</td>
									<td align="center"><input name="station.stationAddress"
										type="text" id="TextBox1" class="span1-1" style="width:200px;" />
									</td>
								</tr>

							</tbody>
						</table>

					</div>
					<div class="modal-footer">
						<input type="submit" value="添加" class="btn btn-info"
							style="width:80px" />
						<button class="btn btn-info" data-dismiss="modal"
							aria-hidden="true" style="width:80px">取消</button>
					</div>

				</form>
			</div>
			<table class="table table-bordered table-striped table-hover">
				<tbody>
					<tr align="center">
						<td nowrap="nowrap"><strong>维修人编号</strong>
						</td>
						<td nowrap="nowrap"><strong>维修人名称</strong>
						</td>
						<td nowrap="nowrap"><strong>联系方式</strong>
						</td>
						<td nowrap="nowrap"><strong>地址</strong>
						</td>
						<td nowrap="nowrap"><strong> 操作 </strong>
						</td>
					</tr>


					<!-- <form method="post" action="stationAction!update"> -->

					<c:forEach items="${list}" var="s">
						<!-- onmouseover="over(this,3)" onmouseout="out(this,3) -->
						<tr align="center">
							<td nowrap="nowrap"><input name="station.id" type="text"
								value="${s.id}" style="display:none;" />${s.id }</td>
							<td nowrap="nowrap"><input name="station.stationName"
								type="text" value="${s.stationName}"
								onblur="if (value ==''){value='${s.stationName}'}"
								class="edit-text" style="width:100px;display:none;" /> <span
								class="view-text">${s.stationName}</span>
							</td>
							<td nowrap="nowrap"><input name="station.stationPhone"
								type="text" value="${s.stationPhone}"
								onblur="if (value ==''){value='${s.stationPhone}'}"
								class="edit-text" style="width:100px;display:none;" /> <span
								class="view-text">${s.stationPhone}</span>
							</td>
							<td nowrap="nowrap"><input name="station.stationAddress"
								type="text" value="${s.stationAddress}"
								onblur="if (value ==''){value='${s.stationAddress}'}"
								class="edit-text" style="width:100px;display:none;" /> <span
								class="view-text">${s.stationAddress}</span>
							</td>
							<td nowrap="nowrap"><a data-toggle="modal"
								href="#modal-container-006"
								onclick="setUpdate(${s.id},'${s.stationName}',${s.stationPhone},'${s.stationAddress}')">编辑</a>
								<!-- <input type="submit" value="修改"/> --> |<a
								href="stationAction!del?station.id=${s.id }">删除</a></td>
						</tr>
					</c:forEach>
				</tbody>
				<!--  </form> -->

			</table>
			<div>
				<form name="frm" method="post" action="stationAction!list">
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

			

		</div>
	</div>
	</div>
	<!-- 底部 -->
	
	<div id="modal-container-006" class="modal hide fade" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="width:400px; margin-left:-100px; top:20%">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">修改维修人员信息:</h3>
		</div>
		<form method="post" action="stationAction!update">
			<input name="station.id" id="station_id" type="text"
				style="display:none;" />
			<div class="modal-body">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td align="center">维修人编号:</td>
							<td align="center"><span id="station-id"></span>
							</td>
						</tr>
						<tr>
							<td align="center">名称:</td>
							<td align="center"><input name="station.stationName"
								id="station_name" type="text" id="endTextBox" class="span1-1"
								style="text-align:center;width:100px;border:none;" /></td>
						</tr>
						<tr>
							<td align="center">联系方式:</td>
							<td align="center"><input name="station.stationPhone"
								type="text" id="station_phone" id="manTextBox" class="span1-1"
								style="text-align:center;width:100px;border:none;" />
							</td>
						</tr>
						<tr>
							<td align="center">地址:</td>
							<td align="center"><input name="station.stationAddress"
								type="text" id="station_address" id="TextBox1" class="span1-1"
								style="text-align:center;width:100px;border:none;" />
							</td>
						</tr>

					</tbody>
				</table>

			</div>
			<div class="modal-footer">
				<input type="submit" value="修改" class="btn btn-info"
					style="align:right;width:80px" />
				<button class="btn btn-info" data-dismiss="modal" aria-hidden="true"
					style="width:80px">取消</button>
			</div>

		</form>
	</div>


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
