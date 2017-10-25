<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<title>高校后勤维修管理系统注册</title>

<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src='js/jquery-3.0.0.js'></script>
<script type="text/javascript" src="js/script.js"></script>

</head>
<body>

<div class='body_main'> 

	<div class='box_title'>
		<div class='text_content'>
			<h1>请注册高校后勤管理系统</h1>
		</div>
	</div>
	
	<div class='box_main'>
		<div id="register" class="register">
			<form method="post" action="loginAction!register">
				<div id="form_submit" class="form_submit">
					<div class="fieldset">
					
						<div class="field-group">
							<label class="required title">姓名</label>
							<span class="control-group" id="name">
								<div class="input_add_long_background">
									<input class="register_input" type="text" id="name" name="userInfo.name" maxLength="11" value="" onblur="__changeUserName('mobile');">
								</div>
							</span>
							<label class="tips">请输入姓名</label>
						</div>
						<div class="field-group">
							<label class="required title">手机号码</label>
							<span class="control-group" id="mobile_input">
								<div class="input_add_long_background">
									<input class="register_input" type="text" id="mobile" name="userInfo.mobilephone" maxLength="11" value="" onblur="__changeUserName('mobile');">
								</div>
							</span>
							
						</div>
						
						<div class="field-group">
							<label class="required title">地址：</label>
							<span class="control-group" id="email_input">
								<div class="input_add_long_background">
									<input class="register_input" type="text" id="email" name="userInfo.address" maxLength="50" value="" onblur="__changeUserName('email');">
								</div>
							</span>
							<label class="tips">请输入您的常住地址</label>
						</div>
						
						<div class="field-group">
							<label class="required title">用户名：</label>
							<span class="control-group" id="name">
								<div class="input_add_long_background">
									<input class="register_input" type="text" id="name" name="userInfo.username" maxLength="11" value="" onblur="__changeUserName('mobile');">
								</div>
							</span>
							<label class="tips">请输入用户名</label>
						</div>
						<div class="field-group">
							<label class="required title">设置密码</label>
							<span class="control-group" id="password1_input">
								<div class="input_add_long_background">
									<input class="register_input" type="password" id="password" name="userInfo.password" maxLength="20" value="" onblur="checkPwd1(this.value);" />
								</div>
							</span>
							
						</div>
						
						
						
					</div>
					
				</div>
				
				<div id="div_submit" class="div_submit">
					<div class='div_submit_button'>
						<input id="submit" type="submit" value="注册" class='button_button disabled'>
					</div>
					
				</div>
				
			</form>
		</div>
	 
	</div>
	
	<div class='box_bottom'></div>

</div>

<script type="text/javascript">
function __changeUserName(of){
	var username=$('#'+of).val();
	if(of=='email'){
		if (username.search(/^[\w\.+-]+@[\w\.+-]+$/) == -1) {
			//showTooltips('email_input','请输入正确的Email地址');
			return;
		}					
	}else{
		if(username=='' || !isMobilePhone(username)) {
			//showTooltips('mobile_input','请输入正确的手机号码');
			return;
		}
	}
}

function checkPwd1(pwd1) {
	if (pwd1.search(/^.{6,20}$/) == -1) {
		showTooltips('password1_input','密码为空或位数太少');
	}else {
		hideTooltips('password1_input');
	}
}	

/* function checkEmail(email) {
	if (email.search(/^.+@.+$/) == -1) {
		//showTooltips('email_input','邮箱格式不正确');
	}else {
		hideTooltips('email_input');
	}
} */

function checkAuthCode(authcode) {
	if (authcode == '' || authcode.length != 6) {
		showTooltips('code_input','验证码不正确');
	}else {
		hideTooltips('code_input');
	}     
}

function check() {
	hideAllTooltips();
	var ckh_result = true;
	if ($('#email').val() == '') {
		showTooltips('email_input','邮箱不能为空');
		ckh_result = false;
	}
	if ($('#password1').val() == '') {
		showTooltips('password1_input','密码不能为空');
		ckh_result = false;
	}      
	if($('#mobile').val()=='' || !isMobilePhone($('#mobile').val())) {            
		showTooltips('mobile_input','手机号码不正确');
		ckh_result = false;
	}
	if ($('#code').val() == '' || $('#code').val().length !=6) {
		showTooltips('code_input','验证码不正确');
		ckh_result = false;
	}
	/* if ($('#verify').attr('checked') == false){
		showTooltips('checkbox_input','对不起，您不同意Webluker的《使用协议》无法注册');
		ckh_result = false;
	} */
	return ckh_result;
}

function checkMobilePhone(telphone) {
	if(telphone=='' || !isMobilePhone(telphone)) {
		showTooltips('mobile_input','请输入正确的手机号码');
	}else{
		hideTooltips('mobile_input');
	}
}

function isMobilePhone(value) {
	if(value.search(/^(\+\d{2,3})?\d{11}$/) == -1)
	return false;
	else
	return true;
} 
</script>

</body>
</html>
