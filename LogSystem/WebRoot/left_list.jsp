<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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

</head>

<body>

<div class="header">
	 <div class="logo"><img src="<%=request.getContextPath() %>//img/logo_text.png" /></div>
     
				<div class="header-right">
                 <i class="icon-off icon-white"></i> <a id="modal-973558" href="#modal-container-973558" role="button" data-toggle="modal">退出</a> 
                <div id="modal-container-973558" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:300px; margin-left:-150px; top:30%">
				<div class="modal-header">
					 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">
						提出系统
					</h3>
				</div>
				<div class="modal-body">
					<p>
						您确定要注销退出系统吗？
					</p>
				</div>
				<div class="modal-footer">
					 <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button> <a class="btn btn-primary" style="line-height:20px;" href="<%=request.getContextPath() %>/login.jsp" >确定退出</a>
				</div>
			</div>
				</div>
</div>
<!-- 顶部 -->     
            
<div id="middle">
     <div class="left">
     
     <script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>

<div id="my_menu" class="sdmenu">
	<div >
		<span>用户管理</span>
		<a href="loginAction!list">用户管理列表</a>
	</div>
	<div >
		<span>维修人员管理</span>
		<a href="stationAction!list">维修人员管理</a>
	</div>
	<!-- <div >
		<span>线路管理</span>
		<a href="wayAction!list">线路管理</a>
	</div> -->
	<div >
		<span>维修订单管理</span>
		<!-- <a href="ordersAction!add">添加订单</a>  -->
		<a href="ordersAction!list">维修订单列表</a>
		<!-- <a href="ordersAction!selOne">修改页面</a> -->
	</div>
	<div >
		<span>维修种类管理</span>
		<a href="goodsAction!list">维修种类管理</a>
	</div>
	<div >
		<span>订单统计管理</span>
		<a href="vehicleAction!list">订单统计管理</a>
	</div>
</div>
</div>
     <div class="Switch"></div>
     <script type="text/javascript">
		 /*折叠框收缩*/
	$(document).ready(function(e) {
    $(".Switch").click(function(){
	$(".left").toggle();
	 
		});
});
</script>

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
