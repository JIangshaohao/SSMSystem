<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<title>供课系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords" content="" />
<jsp:include page="head.jsp" />
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/judge.js"></script>

<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/style_loginback.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
<link rel="stylesheet" href="css/fontawesome-all.css">
<!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- web-fonts -->
<link
	href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<link
	href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
<!-- //web-fonts -->
</head>
<div id="bg">
	<canvas></canvas>
	<canvas></canvas>
	<canvas></canvas>
</div>

<body style="background-image: url('image/geometry2.png')">

	<div style="height:50px;width:100%"></div>
	<div class="container">
		<div class="row"></div>
		<div class="row">
			<div class="col-md-4 col-md-push-8"
				style="background: rgba(210,260,60, 0.3);border-radius:10px;height:370px;width:350px">
				<form action="ssm_checklogin.action" method="post" name="form"
					onSubmit="return myCheck()">
					<h2>
						<b>登录</b>
					</h2>
					<div class="form-group">
						<center>
							<b> 用户&nbsp<input type="radio" name="radio" value="0"
								checked="true"> 管理员&nbsp<input type="radio" name="radio"
								value="1">
							</b>
						</center>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="usercode"
							placeholder="账号(UserCode)" autocomplete="off">
							<i style="color: red;font-size: bold">${msg}</i>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="password"
							placeholder="密码" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="remember"><input type="checkbox" id="remember"><font
							size="4"> 记住密码 </font></label>
					</div>
					<div class="form-group">
						<font size="3">
							<p>
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp还没有账号? <a
									href="ssm_registerinto.action">点击注册</a>
							</p>
						</font>
					</div>
					<div class="form-group">
						<center>
							<input type="submit" value="登录" class="btn btn-primary"
								style="width:300px">
						</center>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<!-- Jquery -->
<script src="js/jquery-3.3.1.min.js"></script>
<!-- //Jquery -->

<!-- effect js -->
<script src="js/canva_moving_effect.js"></script>
<!-- //effect js -->
</html>


