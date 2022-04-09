<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>首页</title>
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
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/wow.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/custom.js"></script>
</head>
<body>
	<input type="hidden" name="name">
	<div class="navbar navbar-inverse set-radius-zero" style="background: linear-gradient(to bottom, #fad0c4,#fff)">
		<div class="container">
			<div class="navbar-header" >
				<a href="ssm_index.action">
					<span style="font-family:monotype corsiva;font-size:40px;color: black;"> BDQN of Class</span>
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
								<li><a href="ssm_login.action">您好，请先登录！</a></li>
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
	<!-- MENU SECTION END-->
	<div id="slideshow-sec">
		<div id="carousel-div" class="carousel slide" data-ride="carousel">

			<div class="carousel-inner">
				<div class="item active">

					<img src="image/pexels-eberhard-grossgasteiger-1287145.jpg" />
					<div class="carousel-caption">
						<h1 class="wow slideInLeft" data-wow-duration="2s">SSM有手就行</h1>
						<h2 class="wow slideInRight" data-wow-duration="2s">相应自己！一定可以放弃！</h2>
					</div>

				</div>
				<div class="item">
					<img src="image/pexels-roberto-nickson-2559941.jpg" />
					<div class="carousel-caption">
						<h1 class="wow slideInLeft" data-wow-duration="2s">从入门到放弃！</h1>
						<h2 class="wow slideInRight" data-wow-duration="2s">从删库到跑路！</h2>
					</div>
				</div>
				<div class="item">
					<img src="image/pexels-francesco-ungaro-2325446.jpg" />
					<div class="carousel-caption">
						<h1 class="wow slideInLeft" data-wow-duration="2s">从入门到坐牢！</h1>
						<h2 class="wow slideInRight" data-wow-duration="2s">相信自己定可以猝死自己！</h2>
					</div>

				</div>
			</div>
			<!--INDICATORS-->
			<ol class="carousel-indicators">
				<li data-target="#carousel-div" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-div" data-slide-to="1"></li>
				<li data-target="#carousel-div" data-slide-to="2"></li>
			</ol>
			<!--PREVIUS-NEXT BUTTONS-->
			<a class="left carousel-control" href="#carousel-div"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#carousel-div"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<!-- SLIDESHOW SECTION END-->
	<!-- <div class="below-slideshow">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="txt-block">
						<h4>学霸的世界</h4>
						<h3>他们和您一样，以您为本</h3>
						<p>死记硬背得不到真知识，投机取巧学不到真本领；纸上谈兵学不到真本事，闭门造车结不出好硕果。</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="txt-block">
						<h4>学习的方法</h4>
						<h3>只因你我，皆在此中</h3>
						<p>
							学习中没问题”就是“方法有问题”，诸如盲从，欠思考、不能举一反三、不会推陈出新等。所以，作为一名头脑清醒的学生，应善于在没问题中查找出自己存在的问题，这样才能不断产生好的问题，才能及时解决好新的问题。
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="txt-block">
						<h4>鲁迅</h4>
						<h3>以学为尊</h3>
						<p>
							只看一个人的着作，结果是不大发的：你就得不到多方面的优点。必须如蜜蜂一样，采过许多花，这才能酿出蜜来。倘若叮在一处，所得就非常有限，枯燥了。
						</p>
					</div>
				</div>
			</div>
		</div>
	</div> -->
</body>
</html>