<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="body.jsp"/>
  <head>
   <script type="text/javascript" src="js/judge.js"></script>
   <style type="text/css">
   </style>
  </head>
  
  <body>
  <i style="color: red;font-size: bold">${msg}</i>
    <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">用户管理</a></li>
                <li class="am-active">用户中心</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>用户列表
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                    
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 
                                    	<a href="root_insertuser.action" style="color:white">	
                                    		新增
                                    	</a>
                                    </button>
                                    <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                                    <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span>
                                    	<a href="root_shenheregister.action" style="color:white">	
                                    		审核
                                    	</a>	 
                                    </button>
                                    <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    
                    <form action="root_usercenter.action?sign=1" method="post" name="form">
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select name="title" data-am-selected="{btnSize: 'sm'}">
					              <option value="1">所有类别</option>
					              <option value="2">学校名称</option>
					              <option value="3">学校代码</option>
					              <option value="4">身份</option>
					              <option value="5">学号</option>
					              <option value="6">姓名</option>
					              <option value="7">专业</option>
					            </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field" name="keyword">
                                <span class="am-input-group-btn">
						            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="submit"></button>
						        </span>
                            </div>
                        </div>
                      </form>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-id">ID</th>
                                            <th class="table-date">学校代码</th>
                                            <th class="table-date am-hide-sm-only">学校名称</th>
                                            <th class="table-date am-hide-sm-only">身份</th>
                                            <th class="table-type">专业</th>
                                            <th class="table-type">班级</th>
                                            <th class="table-title">学号</th>
                                            <th class="table-title">姓名</th>
                                            <th class="table-date am-hide-sm-only">照片</th>
                                            <th class="table-title">性别</th>
                                            <th class="table-set">&nbsp;操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${course}" var="CourseInfo" begin="${begin}" end="${end}" varStatus="status">
	                                    	<tr>
                                            <td>${status.index}</td>
                                            <td>${CourseInfo.schoolCode}</td>
                                            <td>${CourseInfo.schoolName}</td>
                                            <c:if test="${CourseInfo.userType == 0}">
                                            	<td>学生</td>
                                            </c:if>
                                            <c:if test="${CourseInfo.userType == 1}">
                                            	<td>教师</td>
                                            </c:if>
                                            <td class="am-hide-sm-only">${CourseInfo.userMajor}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.userClassroom}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.userCode}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.userName}</td>
                                            <td class="am-hide-sm-only">
                                            	<img alt="" src="${CourseInfo.userImage}" style="width:25px;height:25px">
                                            </td>
                                            <td>
                                            <c:if test="${CourseInfo.userSex == 0}">
                                            	男
                                            </c:if>
                                            <c:if test="${CourseInfo.userSex == 1}">
                                            	女
                                            </c:if>
                                            </td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                    	<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 
                                                        	<a href="root_updateuser.action?index=${status.index}">
                                                        		编辑
                                                        	</a>
                                                        </button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 
                                                        	<a href="root_resetpassword.action?userCode=${CourseInfo.userCode}">
                                                        		重置
                                                        	</a>
                                                        </button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span>
                                                        	<a href="root_deleteuser.action?userCode=${CourseInfo.userCode}">
                                                        		 删除
                                                        	</a> 
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
	                                   </c:forEach>
                                    </tbody>
                                </table>
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <c:forEach var="x" begin="1" end="${course_allpage}">
                                            	<c:if test="${page == x}">
                                            		<li class="am-active"><a href="ssm_paging.action?page=${x}&type=2">${x}</a></li>
                                            	</c:if>
                                            	<c:if test="${page != x}">
                                            		<li><a href="ssm_paging.action?page=${x}&type=2">${x}</a></li>
                                            	</c:if>
											</c:forEach>
                                            <li class="am-disabled"><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <hr>
                        </div>
                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>
        </div>
    </div>
  </body>
</html>
