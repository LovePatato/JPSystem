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
	src="<%=request.getContextPath()%>/js/jquery-3.0.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/sdmenu.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/laydate/laydate.js"></script>


<script type="text/javascript">
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
        function checkNULL(){
		   if(frm1.Type.value==""){
		    alert("货物种类不能空，请输入货物种类名称！");//弹出提示框
		    document.frm1.Type.focus();  //获取鼠标焦点
		    return(false);//返回一个值
		  }
		  else if(frm1.Remark.value==""){
		    alert("描述不得为空，请输入描述！");//弹出提示框
		    document.frm1.Remark.focus();  //获取鼠标焦点
		    return(false);//返回一个值
		  }
		  else{ 
			  alert("添加成功！");
			  }
		 
		 }
	
	function checkNULL1(){
		if(f.goods_name.value==""){
		    alert("货物种类不能空，请输入货物种类名称！");//弹出提示框
		    document.f.goods_name.focus();  //获取鼠标焦点
		    return(false);//返回一个值
		  }
		  else if(f.goods_remark.value==""){
		    alert("描述不得为空，请输入描述！");//弹出提示框
		    document.f.goods_remark.focus();  //获取鼠标焦点
		    return(false);//返回一个值
		  }
		  else{ 
			  alert("修改成功！");
			  }
		 
		 }
	
	function del(){
		  var fdel=window.confirm("是否确定删除？");
		  if (fdel)
		  { return true; }
		  else
		  { return false; }  
		}
</script>


</head>

<jsp:include page="/left_list.jsp" />

<body>

	
		<div class="right" id="mainFrame">

			<div class="right_cont">
				<ul class="breadcrumb">
					当前位置：
					<a href="#">首页</a>
					<span class="divider">/</span> 维修种类管理
				</ul>

				<div class="title_right">
					<span class="pull-right margin-bottom-5"><a
						class="btn btn-info btn-small" id="modal-9735581"
						href="#modal-container-9735581" role="button" data-toggle="modal"><i
							class="icon-plus icon-white"></i> 添加维修种类</a></span><strong>维修种类管理</strong>
				</div>

				<div id="modal-container-9735581" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
					style="width:500px; margin-left:-180px; top:20%">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">添加维修种类</h3>
					</div>
					<form name="frm1"method="post" action="goodsAction!add">
						<div class="modal-body">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td align="center">维修种类:</td>
										<td align="center"><input name="goods.goodsTypeName"
											type="text" id="Type" class="span1-1"
											style="width:400px;" /></td>
									</tr>
									<tr>
										<td align="center">描述:</td>
										<td align="center"><input name="goods.remark"
											type="text" id="Remark" class="span1-1"
											style="width:400px;" /></td>
									</tr>
								</tbody>
							</table>

						</div>
						<div class="modal-footer">
							<input type="submit" value="添加" class="btn btn-info"
								style="width:80px" onclick="return checkNULL()"/>
							<button class="btn btn-info" data-dismiss="modal"
								aria-hidden="true" style="width:80px">取消</button>
						</div>
						

					</form>
				</div>

              
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr align="center">
						    <td nowrap="nowrap"><strong>序号</strong></td>
						    <td nowrap="nowrap"><strong>维修种类编号</strong></td>
							<td nowrap="nowrap"><strong>维修种类</strong></td>
							<td nowrap="nowrap"><strong>描述</strong></td>
							<td width="80" nowrap="nowrap"><strong> 操作 </strong></td>
						</tr>
						<c:forEach items="${list}" var="g" varStatus="status">
							<tr align="center">
							    <td nowrap="nowrap">${status.count}</td>
								<td nowrap="nowrap">${g.id}</td>
								<td nowrap="nowrap">${g.goodsTypeName}</td>
								<td nowrap="nowrap">${g.remark}</td>
								<td nowrap="nowrap">
								<a id ="modal-006" role="button" data-toggle="modal" href="#modal-container-006" onclick="setUpdateGoods('${g.id}','${g.goodsTypeName}','${g.remark}')">修改</a>|<a href="goodsAction!del?goods.id=${g.id}"onclick="return del()">删除</a></td>
								<%--  <input type="submit" value="修改"/><input type="button" value="删除" onclick="window.location='goodsAction!del?goods.id=${v.id }'"/> --%>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			

				<div>
				 <form  name="frm"  method="post"  action="goodsAction!list">
				     <input type="hidden" name="curPage" value="${curPage}"/>
				 	</form>
					共${totalPage}页,&nbsp&nbsp总${totalRows}条记录,&nbsp&nbsp第${curPage}页&nbsp;&nbsp; <a
						href="javascript:goPage(1)">首页</a>&nbsp;
					<c:if test="${curPage>1}">
						<a href="javascript:prePage()">上一页</a>
					</c:if>
					<c:if test="${curPage<=1}">上一页</c:if>
					&nbsp;
					<c:if test="${curPage<totalPage}">
						<a href="javascript:nextPage()">下一页</a>
					</c:if>
					<c:if test="${curPage>=totalPage}">下一页</c:if>
					&nbsp; <a href="javascript:goPage(${totalPage})">末页</a>
				</div>
				

			</div>
		</div>


	</div>

	<!-- 底部 -->
	<div id="footer">
		版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a
			href="http://www.mycodes.net/" target="_blank">源码之家</a>
	</div>
	
	<div id="modal-container-006" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
					style="width:400px; margin-left:-100px; top:20%">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" >×</button>
						<h3 id="myModalLabel">修改维修种类信息:</h3>
					</div>
					<form name="f" method="post" action="goodsAction!update">
					<input name="goods.id" id="goods_id" type="text" style="display:none;"/>
					<div class="modal-body">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td align="center">维修种类编号:</td>
									<td align="center"><span id="goods-id"></span></td>
								</tr>
								<tr>
									<td align="center">维修种类:</td>
									<td align="center"><input name="goods.goodsTypeName" id="goods_name"
									type="text" id="endTextBox" class="span1-1" style="text-align:center;width:100px;border:none;"/> </td>
								</tr>
								<tr>
									<td align="center">描述:</td>
									<td align="center"><input name="goods.remark" type="text" id="goods_remark"
										 id="manTextBox" class="span1-1" style="text-align:center;width:100px;border:none;"/></td>
								</tr>
							
							</tbody>
						</table>
						
					</div>
					<div class="modal-footer">
						<input type="submit" value="修改" class="btn btn-info"  style="align:right;width:80px" onclick="return checkNULL1()"/>
						<button class="btn btn-info" data-dismiss="modal"
							aria-hidden="true" style="width:80px">取消</button>
					</div>
					
					</form>
				</div>        
    
				
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/vehicle.js"></script> 

</body>
</html>
