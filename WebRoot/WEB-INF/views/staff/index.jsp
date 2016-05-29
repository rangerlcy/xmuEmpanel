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
						普通教职工 <small>以下是关于本系统的使用简单说明，以及当前正在进行的选任工作</small>
					</h3>
					<ul class="breadcrumb">你当前的角色是:${role.roleName }  你登陆的账号是:${user.username } 你登陆的密码是:${user.password }
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<h4>使用说明:</h4>
				对于普通教职工而言，只需要做两件事情。<br>
				一、完善个人信息，必须确保所填写的信息是真实有效的，这些信息将会直接交付给考察组进行审核 <span style="color: red">***必须,后续一切操作的前提</span><br>
				二、报名，报名前需要先绑定报名表，在绑定前请先下载查看将要绑定的报名表是否有误，确认无误后再进行绑定，绑定后不可修改<br>
				在选好志愿点击确定报名后，将判定完成了这次选拔工作任务，之后不可回滚修改。<br>
				 <br>
				以下是一些正在进行的选任工作，仅供预览，请进入系统完成具体操作：<br>
				
				<div style="height:5%"></div>

				<h4>现有以下选任可以报名</h4>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>选任工作名称</th>
							<th>报名开始时间</th>
							<th>报名结束时间</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody >
						<c:forEach items="${staffEmpanelState }" var="uv">
							<tr>
								<td>${uv.empanel.name }</td>
								<td>${uv.empanel.startTime }</td>
								<td>${uv.empanel.endTime }</td>
								<td>${uv.state }</td>
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
			window.location.href="staff/staff_index.do";
		});
		
		$("#exit").click(function(){
			window.location.href="<c:url value="/j_spring_security_logout"/>";
		});
	</script>
</body>
</html>
