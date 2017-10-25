<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>托付物流管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/style.css">
<script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<script>
		$(".btn").click(function(){
			is_hide();
		})
		
		/* var u = $("input[name=userInfo.username]");
		var p = $("input[name=userInfo.password]"); */
		var u = $("#username");
		var p = $("#password");
		$("#submit").live('click',function(){
			if(u.val() == '' || p.val() =='')
			{
				$("#ts").html("用户名或密码不能为空~");
				is_show();
				return false;
			}
			else{
				var reg = /^[0-9A-Za-z]+$/;
				if(!reg.exec(u.val()))
				{
					$("#ts").html("用户名错误");
					is_show();
					return false;
				}
			}
		});
		window.onload = function()
		{
			$(".connect p").eq(0).animate({"left":"0%"}, 600);
			$(".connect p").eq(1).animate({"left":"0%"}, 400);
		}
		function is_hide(){ $(".alert").animate({"top":"-40%"}, 300) }
		function is_show(){ $(".alert").show().animate({"top":"45%"}, 300) }
		</script>
<style type="text/css">

	.type{
		position: relative;
		left: 60px;
		top: 30px;
	}
</style>
</head>

<body oncontextmenu="return false">


        <div class="page-container">
            <h1>托付物流管理系统</h1>
            <form method="post" action="loginAction!login">
				<div>
					<input type="text" name="userInfo.username" class="username" placeholder="Username" autocomplete="off"/>
				</div>
                <div>
					<input type="password" name="userInfo.password" class="password" placeholder="Password" oncontextmenu="return false" onpaste="return false" />
                </div>
                <!-- <button id="submit" type="button" name="submit">Sign in</button> -->
                <div>
                <input type="submit" name="submit" value="登录系统" id="submit"/>
                </div>
                <div class="type">
					<a href="<%=request.getContextPath() %>/JSP/User/register.jsp"  class="register">没有账号请注册</a>
				</div>	
            </form>
            <div class="connect">
                <p>CERTAINTY IS OUR FOCUS</p>
				<p style="margin-top:20px;">专注你的托付</p>
            </div>
            	
				
        </div>
		<div class="alert" style="display:none">
			<h2>消息</h2>
			<div class="alert_con">
				<p id="ts"></p>
				<p style="line-height:70px"><a class="btn">确定</a></p>
			</div>
		</div>
	</body>
</html>
