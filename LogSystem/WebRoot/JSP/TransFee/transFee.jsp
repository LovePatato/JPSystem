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

<title>托付物流管理系统</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link href="JSP/css/goToTopBtn.css" rel="stylesheet" type="text/css" />
<link href="JSP/TransFee/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="JSP/TransFee/css/city-picker.css" rel="stylesheet"
	type="text/css" />
<link href="JSP/TransFee/css/myCss.css" rel="stylesheet" type="text/css" />
<link href="JSP/TransFee/css/qr.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="JSP/TransFee/js/jquery.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/jquery-2.2.1.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/qr.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/bootstrap.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/city-picker.data.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/city-picker.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/main.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/lhgcore.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/lhgcalendar.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/scrolltop.js"></script>
<script type="text/javascript" src="JSP/TransFee/js/Myjs.js"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/JSP/TransFee/css/frame.css" />


</head>

<jsp:include page="/left_list.jsp" />

<body>

	<!-- 整个div -->
	<div style="overflow: auto;">
         <a name="top" id="top"></a> 
		<div style="width:100%;height:100%;margin-left:20px;">

			<!-- 顶部 -->
			<!-- Content 选择寄件的初始地和配送地以及寄件时间-->
			<div name="">
				<h4 class="page-header fon_s">运费查询</h4>
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">

							<!-- 出发地选择 -->
							<div>
								<div class="form-group" name="begin">
									<div style="float:left; padding-top:5px;">出发城市：</div>
									<div
										style="border:0.9px solid #f0f0f0;float:left; height:18px;">
										<div style="position: relative;float:left; ">
											<input id="city-picker3" class="form-control" type="text"
												value="" data-toggle="city-picker">

										</div>

									</div>
								</div>
							</div>

							<!-- 目的地选择 -->
							<div style="margin-top:10px;">
								<div class="form-group" name="begin">
									<div style="float:left; padding-top:5px;">目的城市：</div>
									<div
										style="border:0.9px solid #f0f0f0;float:left; height:18px;padding-right:10px;">
										<div style="position: relative;float:left;">
											<input id="city-picker3_1" class="form-control" type="text"
												value="" data-toggle="city-picker">

										</div>
									</div>
								</div>
							</div>

							<!-- 寄件时间选择 -->
							<div style="margin-top:10px;">
								<div class="form-group" name="begin">
									<div style="float:left;  padding-top:5px;">寄件时间：</div>
									<div
										style="border:0.9px solid #f0f0f0; float:left;height:18px;">
										<div style="position: relative;float:left;">
											<input type="text" id="c1" onclick="J.calendar.get();" />
										</div>
									</div>
									<button type="button"
										style="margin-left:8px;background-color: rgb(56,163,213);"
										onclick="showdiv2()">查询</button>
									<span id="line" style="color:red;"></span>
								</div>
							</div>

						</div>

						<!--运输方式-->

						<!--上半部分-->

						<!-- 控制div的显示与隐藏 -->
						<div style="display:block;">
							<!--选择物流方式-->
							<h4 class="page-header fon_s">选择物流方式</h4>
							<div id="second">

								<table class="transTable">
									<tr
										style="background-color: #E8E8E8;height:30px;font-size: 15px;">
										<td></td>
										<td>运输方式</td>
										<td>单价</td>
										<td>可提货时效（从发货次日算起）</td>
										<td>运输起价</td>
										<td>接货起价</td>
									</tr>

									<tr>
										<td><input type="radio" value="select1" id="select1"
											name="sel"></td>
										<td>3.60特惠件</td>
										<td>首重(3公斤以下 )：19元 续重(3-30 公斤)：4元/公斤</td>
										<td>
											<p>预计可提货时间：</p>
											<p>2017年04月22日 14:00</p>
											<p>预计可派送时间：</p>
											<p>2017年04月22日 18:00</p>
											<p>部分地区需要加时</p>
										</td>
										<td>19</td>
										<td></td>
									</tr>

									<tr>
										<td><input type="radio" id="select2" value="select2"
											name="sel"></td>
										<td>标准快递</td>
										<td>
											<p>首重(1公斤以下 )：13元</p>
											<p>续重(1-3 公斤)：4元/公斤</p>
										</td>
										<td>
											<p>预计可提货时间：</p>
											<p>2017年04月22日 14:00</p>
											<p>预计可派送时间：</p>
											<p>2017年04月22日 18:00</p>
											<p>部分地区需要加时</p>
										</td>
										<td>13</td>
										<td></td>
									</tr>

									<tr>
										<td><input type="radio" value="select3" id="select3"
											name="sel"></td>
										<td>特准快件</td>
										<td>
											<p>首重(1公斤以下 )：17元</p>
											<p>续重(1-30 公斤)：7元/公斤</p>
										</td>
										<td>
											<p>预计可提货时间：</p>
											<p>第二天18:00</p>
											<p>预计可派送时间：</p>
											<p>第 二 天1899-12-31前</p>
										</td>
										<td>17</td>
										<td></td>
									</tr>

									<tr>
										<td><input type="radio" value="select4" id="select4"
											name="sel"></td>
										<td>精准卡航</td>
										<td>重货 3.06 元/公斤，轻货 643 元/立方米</td>
										<td>
											<p>预计总部可提货时间：</p>
											<p>第四天16:00</p>
											<p>预计总部可派送时间：</p>
											<p>第 四 天18:00前</p>
										</td>
										<td>40</td>
										<td></td>
									</tr>

									<tr>
										<td><input type="radio" value="select5" id="select5"
											name="sel"></td>
										<td>精准汽运</td>
										<td>重货 2.54 元/公斤，轻货 533 元/立方米</td>
										<td>第五天到第六天</td>
										<td>30</td>
										<td></td>
									</tr>

									<tr>
										<td><input type="radio" value="select6" id="select6"
											name="sel"></td>
										<td>精准空运</td>
										<td colspan="4">详细价格与时效请咨询当地营业部</td>

									</tr>

									<tr>
										<td><input type="radio" value="select7" id="select7"
											name="sel"></td>
										<td>精准包裹</td>
										<td colspan="4">详细价格与时效请咨询当地营业部</td>

									</tr>
								</table>

								<br>
							</div>

							<!--计算货物的重量和体积-->
							<!-- 隐藏div3 -->
							<div id="three">
								<div>

									<h4 class="page-header fon_s">计算货物的重量和体积</h4>
									<p>
										总重量：<input type="text" width="30px" id="s_weight">千克&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>总体积：</label><input type="text" width="90%" id="s_cubic" />立方米
									</p>
									<span
										style="color: #999999;margin-left:50px;margin-bottom:-40px;">注：我们的工作人员会在接货时重新称重，此估算仅供参考。</span>
									<!--辅助计算器-->
									<div style="padding-left:15px;">
										<!--<label>总重量：</label><input type="text" width="10%" height="10%"/>-->
										<h5 style="background-color:#E8E8E8; width:150px;;">辅助计算器>>>>>>></h5>

										<div
											style="background-color:#f0f0f0; width:530px;margin-top:10px;font-size:10px;">

											<span style="font-size:10px;color: #000;">重量：<label
												id="weight"></label>&nbsp;&nbsp;千克
												&nbsp;&nbsp;&nbsp;&nbsp;体积：<label id="cubic"></label>&nbsp;&nbsp;立方米
												&nbsp;&nbsp;&nbsp;&nbsp;件数：<label id="item"></label>&nbsp;&nbsp;件
											</span> <br>
											<p style="font-size:10px;">
											<p>
												单件重量：<input type="text" id="perWeight" />千克<br>
											</p>
											<p style="margin-top:5px;">
												单件体积：<input id="length" type="text" value="长(cm)"
													onfocus="javascript:if(this.value=='长(cm)')this.value=''" />x
												<input id="width" type="text" value="宽(cm)"
													onfocus="javascript:if(this.value=='宽(cm)')this.value=''" />x
												<input id="height" type="text" value="高(cm)"
													onfocus="javascript:if(this.value=='高(cm)')this.value=''" /><br>
											</p>
											<p style="margin-top:5px;">
												件数：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
													id="count" type="text" />件
												<button type="button"
													style="background-color: rgb(56,163,213);" onclick="cal()">确定</button>
												<span id="mes" style="color:red;">提示信息</span>
											</p>
											</p>
										</div>

									</div>
								</div>

								<!--增值服务-->
								<div>
									<h4 class="page-header fon_s">增值服务</h4>
									保价声明：<input class="boxSet" width="70" type="text" id="price1">元
									&nbsp;&nbsp;<label style="color:#E8E8E8;">请按货物实际价值填写</label><br>
									代收货款：<input class="boxSet" type="text" id="price2">元
									&nbsp;&nbsp;<label style="color:#E8E8E8">如您需要代收货款的服务，请填写代收货款</label><br>
									<button id="cal_all_money" type="button"
										style="background-color: rgb(56,163,213);"
										onclick="all_money();">计算总价</button>
									&nbsp;&nbsp;<span id="SumMoney"></span>
								</div>

								<!--费用明细-->
								<div id="four">
									<!-- 隐藏four -->
									<div>
										<h4 id="h_style" class="page-header fon_s">费用明细</h4>
										<!--导航-->
										<div>
											<button id="item1" type="button"></button>
											<button id="item2" class="item" type="button"
												style="background-image: url(JSP/TransFee/images/item2.png);">
											</button>
											<button id="item3" class="item" type="button"
												style="background-image: url(JSP/TransFee/images/item3.png);">
											</button>
											<button id="item4" class="item" type="button"
												style="background-image: url(JSP/TransFee/images/item4.png);">
											</button>
											<button id="item5" class="item" type="button"
												style="background-image: url(JSP/TransFee/images/item5.png);">
											</button>
										</div>

									</div>

									<!--费用表格-->
									<div>

										<table class="feeTable" style="margin-top:50px;">
											<tr class="feeStyle" style="text-align: center;">
												<td colspan="4">时效3天</td>
											</tr>
											<tr>
												<td class="feeStyle" style="text-align: right;">货物类型</td>
												<td>轻货</td>
												<td class="feeStyle" style="text-align: right;">保价费</td>
												<td id="blank1"></td>
											</tr>
											<tr>
												<td class="feeStyle" style="text-align: right;">交通运输费</td>
												<td id="blank2"></td>
												<td class="feeStyle" style="text-align: right;">代收货款手续费</td>
												<td id="blank3"></td>
											</tr>
											<tr>
												<td class="feeStyle" style="text-align: right;">燃油附加费</td>
												<td id="blank4"></td>
												<td class="feeStyle" style="text-align: right;">签收单返还费</td>
												<td>0</td>
											</tr>
											<tr>
												<td class="feeStyle" style="text-align: right;">综合服务费</td>
												<td id="blank5"></td>
												<td class="feeStyle" style="text-align: right;">接货费</td>
												<td>0</td>
											</tr>
											<tr>
												<td class="feeStyle" style="text-align: right;">总计</td>
												<td id="fee" style="color:red;font-size: 13px;">148</td>
											</tr>
										</table>
									</div>
									<!--费用表格结束-->
								</div>
								<!-- 隐藏four结束 -->
								<!-- 回到顶部 -->
								<!-- <div>
									<p style="margin-top:100px;">
										<a href="#top" target="_self" style="margin-left:100px;">返回上层</a>
										<a href="javascript:scroll(0,0)">返回顶部</a>
									</p>
									<input type="image" name="imageFiel" src="images/backTop.png"
										onclick="javascript:scroll(0,0)" align="right" />
									<div style="display : none;margin-right: 2%" id="goTopBtn"
										onclick="javascript:scroll(0,0)">
										<img border=0 src="images/backTop.png"
											onclick="javascript:scroll(0,0)">
									</div>

								</div> -->

								<!-- 回到顶部 -->

							</div>
							<!-- 隐藏div3结束 -->


						</div>

                         <!-- 回到顶部 -->
								<div>
									<p style="margin-top:100px;">
										<a href="JSP/TransFee/transFee.jsp" target="_self" style="margin-left:100px;">返回顶部</a>
										<!-- <a href="javascript:scroll(0,0)">返回顶部</a> -->
									</p>
									<!-- <input type="image" name="imageFiel" src="images/backTop.png"
										onclick="javascript:scroll(0,0)" align="right" />
									<div style="display : none;margin-right: 2%" id="goTopBtn"
										onclick="javascript:scroll(0,0)">
										<img border=0 src="images/backTop.png"
											onclick="javascript:scroll(0,0)">
									</div> -->

								</div>

								<!-- 回到顶部 -->

					</form>
				</div>
			</div>

			<!--回到顶部-->
			<!--  <div>
				<p ">
					<a href="#top" target="_self"
						style="margin-left:100px;posion:fixed;right: 2%; bottom: 2%; cursor: pointer; opacity: .7; z-index: 9;">
						返回上层 </a> <a href="javascript:scroll(0,0)">返回顶部</a>
				</p>
				<input type="image" name="imageFiel"
					src="JSP/TransFee/images/backTop.png"
					onclick="javascript:scroll(0,0)" align="right" />
				<div style="display : none;margin-right: 2%" id="goTopBtn"
					onclick="javascript:scroll(0,0)">
					<img border=0 src="images/backTop.png"
						onclick="javascript:scroll(0,0)">
				</div>

			</div>  -->

			<!--悬浮二维码-->
			<div
				style="position:fixed; margin-bottom: 100px; right: 1%; bottom: 1%; cursor: pointer; opacity: .7; z-index: 9;">

				<div id="qr_wx_id"></div>
				<div id="qr_wx_over_show_id" style="display:none"></div>
				<div id="qr_qq_id"></div>
				<div id="qr_qq_over_show_id" style="display:none"></div>

			</div>


		</div>

	</div>


</body>
</html>
