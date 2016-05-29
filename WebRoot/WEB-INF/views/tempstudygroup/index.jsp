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
						临时考察组 <small>以下是关于本系统的使用简单说明，以及当前正在进行的选任工作</small>
					</h3>
					<ul class="breadcrumb">你当前的角色是:${role.roleName }  你登陆的账号是:${user.username } 你登陆的密码是:${user.password }
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<h4>考察组属性:</h4>
				临时考察组不属于任何单位，整个考察组是由各方成员临时组成的<br>
				临时考察组的成员均由组织部派遣指定。<br>
				临时考察组所要考察的单位由组织部根据实际情况来指定。<br>
				<h4>考察组负责的工作任务</h4>
				对于临时考察组而言，仅仅负责各个单位下的考察工作，选任工作转交给组织部。<br>
				 <br>
				下面正在进行的选任工作是依据组织部指派的情况生成的：<br>
				<div style="height:5%"></div>

				<h4>当前需要处理的考察工作有</h4>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>名称</th>
							<th>报名开始时间</th>
							<th>报名结束时间</th>
							<th>进度</th>
							<th>操作</th>
						</tr>
					</thead>
						
					<tbody >
						<c:forEach items="${checkWork }" var="uv">
							<tr>
								<td>${uv.empanel.name }</td>
								<td>${uv.empanel.startTime }</td>
								<td>${uv.empanel.endTime }</td>
								<td>${uv.empanel.flow }</td>
								<td TID="${uv.empanel.id }">
									<a href="PSG/PSG_index.do?type=0&empanelId=${uv.empanel.id }">进入</a>
								</td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
				<div style="height:5%"></div>

				<div style="height:5%"></div>
				
				<div class="form-actions">
					<button type="button" class="btn btn-primary pull-right" id="exit" style="margin-right: 30px">
						<i class=" icon-key"></i> 注销
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
		
		$("#exit").click(function(){
			window.location.href="<c:url value="/j_spring_security_logout"/>";
		});
	</script>
</body>
</html>
