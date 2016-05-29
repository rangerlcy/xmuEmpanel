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
						常设考察组 <small>以下是关于本系统的使用简单说明，以及当前正在进行的选任工作</small>
					</h3>
					<ul class="breadcrumb">你当前的角色是:${role.roleName } 你所属单位是:${org_name } 你登陆的账号是:${user.username } 你登陆的密码是:${user.password }
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<h4>使用说明:</h4>
				对于常设考察组而言，只需要负责本单位下的考察和选任工作。<br>
				当本单位有成员（教职工）报名了某选任工作中的某岗位，那么本单位就需要对这些报名人员做相应考察。<br>
				当本单位提供一些岗位让所有符合条件的教职工应聘，那么本单位就需要对其进行选任。<br>
				 <br>
				下面正在进行的选任工作是依据两方面生成的：<br>
				一、本单位是否有教职工报名。----生成考察工作<br>
				二、本单位是否提供应聘岗位。----生成选任工作<br>
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

				<h4>当前需要处理的选任工作有</h4>
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
					<tbody>
						<c:forEach items="${empanelWork }" var="uv">
							<tr>
								<td>${uv.empanel.name }</td>
								<td>${uv.empanel.startTime }</td>
								<td>${uv.empanel.endTime }</td>
								<td>${uv.empanel.flow }</td>
								<td TID="${uv.empanel.id }">
									<a href="PSG/PSG_index.do?type=1&empanelId=${uv.empanel.id }">进入</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div style="height:5%"></div>
				
				<div class="form-actions">
					<button type="button" class="btn btn-primary pull-right" id="exit" style="margin-right: 30px">
						<i class=" icon-key"></i> 注销
					</button>
					<button type="button" class="btn btn-primary pull-right" id="setPSW" style="margin-right: 30px">
						<i class=" icon-key"></i> 修改密码
					</button>
				</div>
			</div>

		</div>
	</div>
	
	<!-- 修改密码 -->
	<div class="modal fade" id="PSW" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
					<h4 class="modal-title">修改密码</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="info_form">
						
						<div class="control-group">	
							<label class="control-label">旧密码<span style="color: red">*</span></label>
							<div class="controls">
								<input type="password" name="old_PSW">
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">新密码<span style="color: red">*</span></label>
							<div class="controls">
								<input type="password" name="new_PSW">
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">再输入一次新密码<span style="color: red">*</span></label>
							<div class="controls">
								<input type="password" name="new_PSW_again">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="submit" data-dismiss="modal">确认</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
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
		
		//修改密码
		$("#setPSW").click(function(){
			$('#PSW').modal('show');
		});
		
		$("#submit").click(function(){
			var data = $("#info_form").serialize();
			$.ajax({
				url : 'PSG/edit_PSW.do',
				type : 'post',
				data : data,
				dataType : 'text',
				success : function(feedback) {
					var tip_info = decodeURIComponent(feedback.replace(
									/\+/g, '%20'));
					alert(tip_info);
				},
				error : function(xhr, ajaxOptions, thrownError) {
					if (xhr.readyState == 0 || xhr.status == 0) {
						// not really an error
						return;
					} else {
						alert("XHR Status = " + xhr.status);
						alert("Thrown Error = " + thrownError);
						alert("AjaxOptions = " + ajaxOptions);
					}
				}
			});
		});
	</script>
</body>
</html>
