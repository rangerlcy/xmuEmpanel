<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<title>厦门大学选任系统</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="resource/BackstageCommon/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resource/BackstageCommon/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
<link href="resource/BackstageCommon/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resource/BackstageCommon/css/style.css" rel="stylesheet" type="text/css" />
<link href="resource/BackstageCommon/css/style-responsive.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<link rel="shortcut icon" href="resource/BackstageCommon/image/favicon.ico" />
<script src="resource/BackstageCommon/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="resource/BackstageCommon/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resource/BackstageCommon/js/app.js"></script>

</head>

<body>
	<div class="container-fluid" style="padding-left:10%; padding-right: 10%;">
		<div style="border:0.5px dashed grey; padding: 30px">
			<div class="row-fluid">
				<div class="span12">
					<h3 class="page-title">
						组织部 <small>以下是关于本系统的使用简单说明，以及当前正在进行的选任工作</small>
					</h3>
					<ul class="breadcrumb">你当前的角色是:${role.roleName } 你登陆的账号是:${user.username } 你登陆的密码是:${user.password }
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<h4>使用说明:</h4>
				对于组织部而言，推进着整个选任工作进行，可以对正在进行选任工作进行跟进，以及对已经完成的历史选任工作进行查看。<br>
				所进行管理的主要分为两个模块：<br>
				一、选任工作，在这个模块中可以进行选任工作的创建，跟进正在进行的选任工作，查看历史选任工作<br>
				二、事务管理，这个模块可以对选任流程进行调整，常设、临时考察组的编辑，以及考察组人员库的管理<br>
				
				 <br>
				当前有如下选任工作正在进行或尚未发布：<br>
				仅供预览，请进入系统后进行相关操作<br>
				<div style="height:5%"></div>

				<h4>正在进行和尚未发布的选任有</h4>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>选任类型</th>
							<th>选任状态及流程</th>
							<th>选任工作名称</th>
							<th>报名开始时间</th>
							<th>报名结束时间</th>
							<th>进度</th>
						</tr>
					</thead>
					<tbody >
						<c:forEach items="${empanel }" var="uv">
							<tr>
								<td>${uv.type }</td>
								<td>${uv.empanelConfig.configName }</td>
								<td>${uv.name }</td>
								<td>${uv.startTime }</td>
								<td>${uv.endTime }</td>
								<td>${uv.flow }</td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
				<div style="height:5%"></div>
				
				<div class="form-actions">
					
					<button type="button" class="btn btn-primary pull-right" id="exit" style="margin-right: 30px">
						<i class=" icon-key"></i> 注销
					</button>
					<span class="pull-right" style="visibility:hidden">12</span>
					<button type="button" class="btn btn-primary pull-right" id="enter">
						<i class=" icon-share-alt"></i> 进入
					</button>
				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		//init
		jQuery(document).ready(function() {
			// initiate layout and plugins
			App.init();
		});
		
		$("#enter").click(function(){
			window.location.href="org/org_index.do";
		
		});
		
		$("#exit").click(function(){
			window.location.href="<c:url value="/j_spring_security_logout"/>";
		});
	</script>
</body>
</html>
