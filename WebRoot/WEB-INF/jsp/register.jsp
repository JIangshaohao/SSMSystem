<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<jsp:include page="head.jsp" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<style type="text/css">
@import url("css/style.css");
</style>
<script type="text/javascript" src="js/judge.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" /> -->
<!-- <script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script> -->

</head>

<body style="background-image:url('image/2.jpg')">

	<div>
		<h1>
			<font color="black"> 麓谷校区 </font>
		</h1>
		<div class="container1 w3layouts agileits">
			<div>
				<div>
					<img src="image/usericon.png" height="40" width="40">
					<h2>信息填写</h2>
					<i style="color: red;font-size: bold">${msg}</i>
					<form action="ssm_register.action?sign=0" method="post" name="form"
						enctype="multipart/form-data" onSubmit="return myCheck()">
						<input type="text" name="type" placeholder="学生:0 老师:1"
							autocomplete="off"> <input type="text" Name="school_name"
							placeholder="学校名称" autocomplete="off"> <input type="text"
							Name="school_code" placeholder="学校代码" autocomplete="off">
						<input type="text" Name="major" placeholder="专业"
							autocomplete="off"> <input type="text" name="classroom"
							placeholder="班级" autocomplete="off"> <input type="text"
							Name="name" placeholder="真实姓名" autocomplete="off"> <input
							type="text" Name="usercode" placeholder="学号" autocomplete="off">
						<input type="password" Name="password" id="password"
							placeholder="密码"> <input type="password"
							Name="password1" id="password1" placeholder="再次输入密码"
							onkeyup="validate()"> <input type="file"
							Name="uploadfile" multiple="multiple" class="btn-success"> <input
							type="text" Name="sex" placeholder="男生:0 女生:1" autocomplete="off">
						<div class="send-button w3layouts agileits">
							<input type="submit" value="注册！">
						</div>
					</form>
				</div>
				<span id="tishi"></span> <font color="white">
					<p>您的注册将会由我们管理员进行审核，请耐心等待.</p>
				</font>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
</body>
</html>
