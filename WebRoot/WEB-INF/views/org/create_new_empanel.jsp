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
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>厦门大学选任系统</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="../resource/BackstageCommon/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/style-responsive.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
<!-- END GLOBAL MANDATORY STYLES -->
<link rel="shortcut icon" href="../resource/BackstageCommon/image/favicon.ico" />

</head>

<body class="page-header-fixed">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href=""> <img src="../resource/BackstageCommon/image/empanel_org.png" /> </a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse"> <img src="../resource/BackstageCommon/image/menu-toggler.png" alt="" /> </a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN TOP NAVIGATION MENU -->
				<ul class="nav pull-right">
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="${photo }" style="max-width: 35px; max-height: 35px;" /> <span class="username">${username }</span> <i class="icon-angle-down"></i> </a>
						<ul class="dropdown-menu">
							<li><a href="#" data-toggle="modal" data-target="#person_info"><i class="icon-user"></i> 个人信息</a></li>
							<li class="divider"></li>
							<li><a href="<c:url value="/j_spring_security_logout"/>"><i class="icon-key"></i> 注销</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<ul class="page-sidebar-menu">
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li class="start "><a href="org_index.do"> <i class="icon-home"></i> <span class="title">首页</span> <span class=""></span> </a>
				</li>
				<li class=" active"><a href="javascript:;"> <i class="icon-tasks"></i> <span class="title">选任工作</span> <span class="selected"></span> <span class="arrow open"></span> </a>
					<ul class="sub-menu">
						<li class="active"><a href="create_new_empanel.do">创建新的选任工作</a>
						</li>
						<li class=""><a href="preview_empanel.do">进行中的选任工作</a>
						</li>
						<li class=""><a href="">已完成的选任工作</a>
						</li>
					</ul>
				</li>

				<li class=" "><a href="javascript:;"> <i class="icon-group"></i> <span class="title">事务管理</span> <span class=""></span> <span class="arrow"></span> </a>

					<ul class="sub-menu">
						<li class=""><a href="">选任流程管理</a>
						</li>
						<li class=""><a href="PSG_management.do">常设考察组管理</a></li>
						<li class=""><a href="">临时考察组管理</a></li>
						<li class=""><a href="staff_management.do">教职工人员管理</a>
						</li>
					</ul>
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						<div class="color-panel hidden-phone" style="display: none">
							<label> <span>Header</span> <select class="header-option m-wrap small">
									<option value="fixed" selected>Fixed</option>
									<option value="default">Default</option>
							</select> </label> <label> <span>Sidebar</span> <select class="sidebar-option m-wrap small">
									<option value="fixed" id="sidebar_fixed">Fixed</option>
									<option value="default">Default</option>
							</select> </label> <label> <span>Footer</span> <select class="footer-option m-wrap small">
									<option value="fixed">Fixed</option>
									<option value="default">Default</option>
							</select> </label>
						</div>
						<!-- END BEGIN STYLE CUSTOMIZER -->
						<h3 class="page-title">
							创建新的选任工作 <small>说明：本页面为预创建，创建后仍然可以在左侧面板"进行中的选任工作"中编辑和查看。</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a>选任工作</a> <span class="icon-angle-right"></span> <a>创建新的选任工作</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-pencil"></i>创建选任， 注意带*号的项一旦保存不可修改
								</div>
							</div>
							<div class="portlet-body form">
								<form class="form-horizontal" id="data_form" style="margin-top:30px">
									<div class="control-group">
										<label class="control-label">选任类型<span style="color: red">*</span> </label>
										<div class="controls">
											<select name="type">
												<option value="">请选择</option>
												<option value="科级选任">科级选任</option>
												<option value="中层选任">中层选任</option>
												<option value="系级选任">系级选任</option>
											</select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">选任流程<span style="color: red">*</span> </label>
										<div class="controls">
											<select name="status">
												<option value="">请选择</option>
												<option value="科级选任流程2016">科级选任流程2016</option>
												<option value="中层选任流程2016">中层选任流程2016</option>
												<option value="系级选任流程2016">系级选任流程2016</option>
											</select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">选任名称<span style="color: red">*</span> </label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="empanel_name">
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">报名开始时间 </label>
										<div class="controls">
											<select class="span2 year" name="start_register_year">
												<option value="">请输入</option>
												<c:forEach var="x" begin="2016" end="2030">
													<option value="${x}">${x}</option>
												</c:forEach>
											</select> 年 <select class="span2 month" name="start_register_month">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="12">
													<option value="${x}">${x}</option>
												</c:forEach>
											</select> 月 <select class="span2 month" name="start_register_day">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="31">
													<option value="${x}">${x}</option>
												</c:forEach>
											</select> 日
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">报名结束时间 </label>
										<div class="controls">
											<select class="span2 year" name="end_register_year">
												<option value="">请输入</option>
												<c:forEach var="x" begin="2016" end="2030">
													<option value="${x}">${x}</option>
												</c:forEach>
											</select> 年 <select class="span2 month" name="end_register_month">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="12">
													<option value="${x}">${x}</option>
												</c:forEach>
											</select> 月 <select class="span2 month" name="end_register_day">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="31">
													<option value="${x}">${x}</option>
												</c:forEach>
											</select> 日
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">选任方案(计划) </label>
										<div class="controls">
											<textarea name="plan" class="span10" rows="5"></textarea>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">每人最多可报岗位数量 </label>
										<div class="controls">
											<input type="number" name="maxnum" placeholder="可报志愿最大数量">
										</div>
									</div>


									<div class="control-group">
										<label class="control-label">选任岗位(若有则必完整)</label>
										<div class="controls" id="empanel_job" style="margin-bottom: 30px">
											<div id="job_model" style="display: none">
												<select class="span3" name="organization" style="margin-right: 5px">
													<option value="">请选择单位</option>
													<c:forEach items="${org }" var="uv">
														<option value="${uv.name }">${uv.name }</option>
													</c:forEach>
												</select> <input type="text" name="jobName" placeholder="岗位名称"> <select class="span2" name="level" style="margin-right: 5px">
													<option value="">请选择级别</option>
													<option value="副部级">副部级</option>
													<option value="正厅级">正厅级</option>
													<option value="副厅级">副厅级</option>
													<option value="正处级">正处级</option>
													<option value="副厅级">副厅级</option>
													<option value="副处级">副处级</option>
													<option value="正科级/副处级">正科级/副处级</option>
													<option value="正科级">正科级</option>
													<option value="科级">科级</option>
													<option value="系级、副处级">系级、副处级</option>
													<option value="聘任">聘任</option>
													<option value="无 ">无</option>
													<option value="兼">兼</option>
												</select> <input class="span2" name="jobNumber" type="number" placeholder="数量" style="margin-right: 5px" style="margin-right: 5px">

												<button class="delBtn" type="button" class="btn btn-primary">
													<i class="icon-remove-circle">删除</i>
												</button>
												<br>
											</div>
										</div>
										<button id="addBtn" type="button" class="btn btn-primary pull-right">新增一条岗位</button>
									</div>

								</form>

								<div class="form-actions">
									<button type="button" class="btn btn-primary" id="create">
										<i class="icon-ok"></i> 保存创建
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">Copyright 2016 © 厦门大学信息学院</div>
		<div class="footer-tools">
			<span class="go-top"> <i class="icon-angle-up"></i> </span>
		</div>
	</div>
	<!-- END FOOTER -->

	<!--person info Modal -->
	<div class="modal fade" id="person_info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">个人账户信息</h4>
				</div>
				<div class="modal-body">
					用户名：${username } </br> 身份证: ${identify } </br> 邮箱: ${email } </br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<script src="../resource/BackstageCommon/js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="../resource/BackstageCommon/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="../resource/BackstageCommon/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="../resource/BackstageCommon/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
<script src="../resource/BackstageCommon/js/excanvas.min.js"></script>
<script src="../resource/BackstageCommon/js/respond.min.js"></script>
<![endif]-->
	<!-- END CORE PLUGINS -->
	<script src="../resource/BackstageCommon/js/app.js"></script>
	<script>
		//init
		jQuery(document).ready(function() {
			// initiate layout and plugins
			App.init();
		});

		setTimeout(function() {
			$(".sidebar-option").trigger("change");
		}, 500);

		$("#addBtn").click(function() {
			var htmlStr = $("#job_model").html();
			$("#empanel_job").append(htmlStr);
			$(".delBtn").click(deleteData);
		});

		$(".delBtn").click(deleteData);

		function deleteData() {
			$(this).next('br').remove();
			$(this).prev('input').remove();
			$(this).prev('select').remove();
			$(this).prev('input').remove();
			$(this).prev('select').remove();
			$(this).remove();
		}

		$("#create").click(
				function() {
					var data = $("#data_form").serialize();
					//alert(data);
					$.ajax({
						url : 'save_new_empanel.do',
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