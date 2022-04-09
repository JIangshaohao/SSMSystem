<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<jsp:include page="body.jsp" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<head>
</head>

<body data-type="index">
	<i style="color: red;font-size: bold">${msg}</i>
	<div class="tpl-content-wrapper">
		<div class="tpl-content-page-title">麓谷校区</div>
		<ol class="am-breadcrumb">
			<li><a href="#" class="am-icon-home">首页</a></li>
			<li><a href="#">分类</a></li>
			<li class="am-active">内容</li>
		</ol>
		<div class="tpl-content-scope">
			<div class="note note-info">
				<h3>
					麓谷校区——开发者感想！ <span class="close" data-close="note"></span>
				</h3>
				<p>
					这个学校人才辈出，个个都是人才，小小年纪不好好读书，死过来学IT，抢IT人的饭碗。在我看来，这个时代内卷严重，尤其是IT界的秃顶者，技术没学到，头反而还秃了，真是不应该啊！
					其实，SSM框架很容易的。只不过是一个配置文件的相互调用罢了——像Spring，一般开发就用的注解来标注什么方法或者什么类在哪个位置，重复如此，作为中间商，不断的调用配置文件，就是一个大杂烩！
					然后是mybatis——这个框架学起来非常容易，只不过是对sql语句(业务逻辑代码)的一些操作罢了，写完之后被spring调用。最后是SpringMVC——这个框架我一开始学起来真的挺懵的，后来
					往简单一点讲，其实就是把访问路径优化了，配置一些拦截器啊等等，因为封装了Servlet，所以还要对web.xml做出一个映射，放行。最后就是通过一个Controller类，将Servlet所有的
					请求参数或发送参数的请求集中到这一个类中，将参数和页面跳转(或是重复跳转)。
				<h3>
					如果世界总是这么简单就好了... <span class="close" data-close="note"></span>
				</h3>
				</p>
			</div>
		</div>

		<div class="tpl-content-scope">
			<div class="note note-info">
				<h3>
					通知 <span class="close" data-close="note"></span>
				</h3>
				<c:forEach items="${log}" var="log">
					<ul class="tpl-task-list tpl-task-remind">
						<li>
							<div class="cosB">${log.logTime}</div>
							<div class="cosA">
								<span class="cosIco"> <i class="am-icon-bell-o"></i>
								</span> <span> 注意：${log.logContent} </span>
							</div>
						</li>
					</ul>
				</c:forEach>
			</div>
		</div>

		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="image/pexels-aarti-vijay-2693529.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="image/pexels-eberhard-grossgasteiger-1287145.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="image/pexels-francesco-ungaro-2325446.jpg">
					<div class="carousel-caption">...</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<!-- <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
			<div class="tpl-table-images-content">
				<div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
				<div class="tpl-i-title">“你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！</div>
				<a href="javascript:;" class="tpl-table-images-content-i"> <span
					class="tpl-table-images-content-i-shadow"></span> <img
					src="image/school1.jpg" alt="">
				</a>
				<div class="tpl-table-images-content-block">
					<div class="tpl-i-font">
						你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。</div>
				</div>
			</div>
		</div>
		<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
			<div class="tpl-table-images-content">
				<div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
				<div class="tpl-i-title">“你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！</div>
				<a href="javascript:;" class="tpl-table-images-content-i"> <span
					class="tpl-table-images-content-i-shadow"></span> <img
					src="image/school2.jpg" alt="">
				</a>
				<div class="tpl-table-images-content-block">
					<div class="tpl-i-font">
						你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。</div>
				</div>
			</div>
		</div>
		<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
			<div class="tpl-table-images-content">
				<div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
				<div class="tpl-i-title">“你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！</div>
				<a href="javascript:;" class="tpl-table-images-content-i"> <span
					class="tpl-table-images-content-i-shadow"></span> <img
					src="image/school3.jpg" alt="">
				</a>
				<div class="tpl-table-images-content-block">
					<div class="tpl-i-font">
						你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。</div>
				</div>
			</div>
		</div> -->
	</div>
</body>
<script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</html>
