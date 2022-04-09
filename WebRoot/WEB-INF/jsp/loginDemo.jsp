<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>供课系统</title>

		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!--图标库-->
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>

		<!--响应式框架-->
		<link rel='stylesheet' href='css/bootstrap.min.css'>

		<!--主要样式-->
		<link rel="stylesheet" href="css/loginDemo.css">

	</head>
	<body>

		<div class="container">

			<div class="card-wrap">

				<div class="card border-0 shadow card--welcome is-show" id="welcome">
					<div class="card-body">
						<h2 class="card-title">欢迎进入</h2>
						<p>供课系统</p>
						<div class="btn-wrap">
						<button class="btn btn-lg btn-register js-btn" data-target="register" name="radio" value="0">用户登录</button>
						<button class="btn btn-lg btn-login js-btn" data-target="login" name="radio" value="1">管理员登录</button>
						<p><a href="ssm_registerinto.action">没有账号？点击注册！</a></p>
					</div>
				</div>

				<div class="card border-0 shadow card--register" id="register">
					<div class="card-body">
						<h2 class="card-title">用户登录</h2>
						<p class="card-text">第三方登录</p>
						<p class="badge-wrap"><a class="badge"><i class="fab fa-facebook-f"></i></a><a class="badge"><i class="fab fa-google"></i></a><a
							 class="badge"><i class="fab fa-twitter"></i></a><a class="badge"><i class="fab fa-github"></i></a></p>
						<p>Hello World!</p>
						<form action="ssm_checklogin.action" method="post" name="form">
							<div class="form-group">
								<input class="form-control" type="text" placeholder="账号(UserCode)" autocomplete="off" required="required">
							</div>
							<div class="form-group">
								<input class="form-control" type="password" placeholder="密码" autocomplete="off" required="required">
							</div>
							<button class="btn btn-lg">登录</button>
						</form>
					</div>
					<button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
				</div>

				<div class="card border-0 shadow card--login" id="login">
					<div class="card-body">
						<h2 class="card-title">欢迎登录！</h2>
						<p>第三方登录</p>
						<p class="badge-wrap"><a class="badge"><i class="fab fa-facebook-f"></i></a><a class="badge"><i class="fab fa-google"></i></a><a
							 class="badge"><i class="fab fa-twitter"></i></a><a class="badge"><i class="fab fa-github"></i></a></p>
						<p>或用邮箱登录</p>
						<form action="ssm_checklogin.action" method="post" name="form">
							<div class="form-group">
								<input class="form-control" type="email" placeholder="账号(UserCode)" autocomplete="off" required="required">
							</div>
							<div class="form-group">
								<input class="form-control" type="password" placeholder="密码" autocomplete="off" required="required">
							</div>
							<p><a href="#">忘记密码?</a></p>
							<button class="btn btn-lg">登录</button>
						</form>
					</div>
					<button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
				</div>

			</div>

		</div>

		<script src="js/loginDemo.js"></script>

	</body>
</html>
