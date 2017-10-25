<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/css.css" />
<script type="text/javascript" src="js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/sdmenu.js"></script>
<script type="text/javascript" src="js/laydate.js"></script>
</head>
<script type="text/javascript">
			$(document).ready(function(e) {
				$(".Switch").click(function() {
					$(".left").toggle();

				});
			});
			
			
</script>
<body>
	<div class="header">
		<div class="logo">
			<img src="img/logo.png" />
		</div>

		<div class="header-right">
			<i class="icon-question-sign icon-white"></i> <a href="#">帮助</a> <i
				class="icon-off icon-white"></i> <a id="modal-973558"
				href="#modal-container-973558" role="button" data-toggle="modal">注销</a>
			<i class="icon-user icon-white"></i> <a href="#">开票员的工作平台</a> <i
				class="icon-envelope icon-white"></i> <a href="#">发送短信</a>
			<div id="modal-container-973558" class="modal hide fade"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
				style="width:300px; margin-left:-150px; top:30%">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">注销系统</h3>
				</div>
				<div class="modal-body">
					<p>您确定要注销退出系统吗？</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<a class="btn btn-primary" style="line-height:20px;" href="登录.html">确定退出</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 顶部 -->
	<div id="middle">
		<div class="left">



			<div id="my_menu" class="sdmenu">
				<div>
					<span>用户管理</span> <a href="JSP/User/user.jsp">用户管理列表</a>
				</div>
				<div>
					<span>配送点管理</span> <a href="JSP/station/station.jsp">配送点管理</a>
				</div>
				<div>
					<span>线路管理</span> <a href="JSP/Way/wayType.jsp">线路管理</a>
				</div>
				<div>
					<span>订单管理</span> <a href="JSP/Bill/Billpage.jsp">新建订单</a> <a
						href="JSP/Bill/order.jsp">订单状态管理</a>
				</div>
				<div>
					<span>货物种类管理</span> <a href="JSP/goods/goodsType.jsp">货物种类管理</a>
				</div>
				<div>
					<span>运费管理</span> <a href="JSP/TransFee/transFee.jsp">运费管理</a>
				</div>
			</div>
		</div>
		<div class="Switch"></div>


		<div class="right" id="mainFrame">

			<div class="right_cont">
				<ul class="breadcrumb">
					当前位置：
					<a href="#">首页</a>
					<span class="divider">/</span>
					<a href="#">订单管理</a>
					<span class="divider">/</span> 新建订单
				</ul>

				<div class="title_right">
					<strong>发货单填写</strong>
				</div>
				<div style="width:900px;margin:auto;">
					<table class="table table-bordered">
						<tr>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">日期：</td>
							<td width="23%"><input type="text"
								class="laydate-icon span1-1" id="Calendar" value="2015-08-25" />
							</td>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">直达站：</td>
							<td width="23%"><input type="text" name="" id=""
								class="span1-1" /></td>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">中转至：</td>
							<td><input type="text" name="" id="" class="span1-1" /></td>
						</tr>
						<tr>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">卡号：</td>
							<td><input type="text" name="" id="" class="span1-1" /></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">发货人：</td>
							<td><input type="text" name="" id="" class="span1-1" /></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">电话：</td>
							<td><input type="text" name="" id="" class="span1-1" /></td>
						</tr>
						<tr>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">票号：</td>
							<td><input type="text" name="input" id="input"
								class="span1-1" /></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">收货人：</td>
							<td><input type="text" name="input2" id="input2"
								class="span1-1" /></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">电话：</td>
							<td><input type="text" name="input3" id="input3"
								class="span1-1" /></td>
						</tr>
					</table>
					<table class="table table-bordered">
						<tr>
							<td align="center" bgcolor="#f1f1f1"><strong>货物名称</strong></td>
							<td align="center" bgcolor="#f1f1f1"><strong>包装</strong></td>
							<td align="center" bgcolor="#f1f1f1"><strong>数量</strong></td>
							<td align="center" bgcolor="#f1f1f1"><strong>运费</strong></td>
							<td align="center" bgcolor="#f1f1f1"><strong>重量</strong></td>
							<td align="center" bgcolor="#f1f1f1"><strong>体积</strong></td>
							<td align="center" bgcolor="#f1f1f1"><strong>结算方式</strong></td>

						</tr>
						<tr>
							<td align="center"><input type="text" name="input4"
								id="input4" class=" span2" /></td>
							<td align="center"><select name="select" id="select"
								class=" span1">
									<option>无</option>
							</select>
							</td>
							<td align="center"><input type="text" name="input5"
								id="input5" class=" span1 text-center" value="22" /></td>
							<td align="center"><input type="text" name="input6"
								id="input6" class=" span1 text-center" value="22" /></td>
							<td align="center"><input type="text" name="input7"
								id="input7" class=" span1 text-center" value="22" /></td>
							<td align="center"><input type="text" name="input8"
								id="input8" class=" span1 text-center" value="22" /></td>
							<td align="center"><select name="select" id="select"
								class=" span1">
									<option>无</option>
							</select></td>

						</tr>
					</table>
					<table class="table table-bordered">
						<tr>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">代收货款：</td>
							<td width="23%"><input type="text" name="input10"
								id="input10" class="span1-1" /></td>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">中转费：</td>
							<td width="23%"><input type="text" name="input14"
								id="input14" class="span1-1" /></td>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">保险金额：</td>
							<td><input type="text" name="input15" id="input15"
								class="span1-1" /></td>
						</tr>
						<tr>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">保费：</td>
							<td><input type="text" name="input11" id="input1-1"
								class="span1-1" /></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">送货费：</td>
							<td><input type="text" name="input12" id="input12"
								class="span1-1" /></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">送货方式：</td>
							<td><input type="text" name="input16" id="input16"
								class="span1-1" /></td>
						</tr>
						<tr>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">需要回单：</td>
							<td><input type="checkbox"> 打印标签</td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">返款：</td>
							<td><input type="text" name="input13" id="input13"
								class="span1-1" /></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">起站：</td>
							<td><input type="radio"> 自提 <input type="radio">
								送货</td>
						</tr>
						<tr>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">分理站：</td>
							<td nowrap="nowrap"><select name="select2" id="select2"
								class=" span1-1">
									<option>郑州</option>
							</select> <input type="text" name="input13" id="input13" class="span1" />
								<select name="select2" id="select2" class=" span1">
									<option>无</option>
							</select></td>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">标签数量：</td>
							<td colspan="3"><input type="text" name="input17"
								id="input17" class="span1" /> <input type="checkbox">
								打印标签</td>
						</tr>
						<tr>
							<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注：</td>
							<td colspan="5" nowrap="nowrap"><input type="text"
								name="input9" id="input9" class="span10" /></td>
						</tr>
					</table>

					<table class="margin-bottom-20  table no-border">
						<tr>
							<td class="text-center"><input type="button" value="确定"
								class="btn btn-info  " style="width:80px;" /></td>
						</tr>
					</table>
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						温馨提示：按“Enter”键进行切换；&nbsp;&nbsp;按“F10”保存；&nbsp;&nbsp;按“F5”代收货款；&nbsp;&nbsp;按“F6”返款；
					</div>

				</div>

			</div>
		</div>
	</div>

	<!-- 底部 -->
	<div id="footer">
		版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a
			href="http://www.mycodes.net/" target="_blank">源码之家</a>
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
