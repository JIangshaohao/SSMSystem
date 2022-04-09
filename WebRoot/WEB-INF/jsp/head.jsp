<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<style type="text/css">
@import url("css/bootstrap.css");

@import url("css/font-awesome.css");

@import url("css/animate.css");

@import url("css/flexslider.css");

@import url("css/style1.css");
</style>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300'
	rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Lobster'
	rel='stylesheet' type='text/css' />

<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link rel="stylesheet" href="css/style_loginback.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/fontawesome-all.css">
<link
	href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<link
	href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
</head>
<div id="bg">
	<canvas></canvas>
	<canvas></canvas>
	<canvas></canvas>
</div>

<body>
	<input type="hidden" name="name">
	<div class="navbar navbar-inverse set-radius-zero">
		<div class="container">
			<div class="navbar-header">
				<a href="ssm_index.action"> <img src="image/logo2.jfif"
					width="0" height="0" /> <!-- <font size="4"><b>供课系统</b></font> -->
					<span style="font-family:monotype corsiva;font-size:40px"> BDQN of Class</span>
				</a>
			</div>
			<div class="right-div"></div>
		</div>
	</div>
	<section class="menu-section">
		<div class="container">
			<div class="row ">
				<div class="col-md-12">
					<div class="navbar-collapse collapse ">
						<ul id="menu-top" class="nav navbar-nav navbar-right">
							<c:if test="${username==null }">
								<li><a href="ssm_login.action" style="color: white">您好，请先登录！</a></li>
							</c:if>
							<c:if test="${username!=null }">
								<li><a href="ssm_personindex.action">您好， ${username}</a></li>
							</c:if>
							<li><a href="ssm_index.action" class="menu-top-active"><img
									src="image/index.png" height="25" width="25"></a></li>
							<li><a href="ssm_registerinto.action"><img
									src="image/register.png" height="25" width="25"></a></li>
							<li><a href="ssm_exit.action"><img
									src="image/logoff.png" height="25" width="25"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<!-- Jquery -->
<script src="js/jquery-3.3.1.min.js"></script>
<!-- //Jquery -->

<!-- effect js -->
<script src="js/canva_moving_effect.js"></script>
<!-- //effect js -->
</html>
