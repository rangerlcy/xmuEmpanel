<!-- 教职工信息管理 -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="/WEB-INF/tlds/empanel-tag.tld" prefix="ide" %>
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
<link href="../resource/BackstageCommon/css/style-metro.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<link rel="shortcut icon" href="../resource/BackstageCommon/image/favicon.ico" />
<style type="text/css">
	.operator:hover{
		text-decoration: underline;
		cursor: pointer;
	}
</style>
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
							<li><a href="#" data-toggle="modal" data-target="#person_info"><i class="icon-user"></i> 个人信息</a>
							</li>
							<li class="divider"></li>
							<li><a href="<c:url value="/j_spring_security_logout"/>"><i class="icon-key"></i> 注销</a>
							</li>
						</ul></li>
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
					<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON --></li>
				<li class="start"><a href="org_index.do"> <i class="icon-home"></i> <span class="title">首页</span> <span class=""></span> </a></li>
				<li class=""><a href="javascript:;"> <i class="icon-tasks"></i> <span class="title">选任工作</span> <span class=""></span> <span class="arrow"></span> </a>
					<ul class="sub-menu">
						<li class=""><a href="create_new_empanel.do">创建新的选任工作</a></li>
						<li class=""><a href="preview_empanel.do">进行中的选任工作</a></li>
						<li class=""><a href="">已完成的选任工作</a></li>
					</ul></li>

				<li class=" active"><a href="javascript:;"> <i class="icon-group"></i> <span class="title">事务管理</span> <span class="selected"></span> <span class="arrow open"></span> </a>

					<ul class="sub-menu">
						<li class=""><a href="selection_process_management.do">选任流程管理</a></li>
						<li class=""><a href="PSG_management.do">常设考察组管理</a></li>
						<li class=""><a href="">临时考察组管理</a></li>
						<li class="active"><a href="staff_management.do">教职工人员管理</a></li>
					</ul></li>
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
							教职工人员管理 <small></small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a>事务管理</a> <span class="icon-angle-right"></span> <a>教职工人员管理</a></li>
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
									<i class="icon-user"></i>人员信息
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
								</div>
							</div>
							<div class="portlet-body" id="portlet">
								<form class="form-horizontal" id="searchUserForm">
									<div class="control-group">
										<label class="control-label">姓名</label>
										<div class="controls">
											<input type="text" id="staffName" value="${staffName }">
											<span style="font-size: 15px">单位</span>
											<select id="org">
												<option value="">请选择单位</option>
												<c:forEach items="${org }" var="uv">
													<c:if test="${uv.name == orgName}">
														<option value="${uv.name }" selected="selected">${uv.name }</option>
													</c:if>
													<c:if test="${uv.name != orgName}">
														<option value="${uv.name }">${uv.name }</option>
													</c:if>
												</c:forEach>
											</select>
											<button type="button" class="btn blue" id="search"><i class=" icon-search"></i>搜索</button>
										</div>
									</div>
								</form>
								
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>证件号</th>
											<th>姓名</th>
											<th>性别</th>
											<th>出生日期</th>
											<th>现任单位</th>
											<th>现职务</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${pageList.result }" var="uv">
											<tr>
												<th>${uv.user.identifyNum }</th>
												<th>${uv.name }</th>
												<th>${uv.sex }</th>
												<th>${uv.birth }</th>
												<th>${uv.organization.name }</th>
												<th>${uv.presentlyJob }</th>
												<th TID="${uv.id }"><a class="operator resetPSW">重置密码</a> <a class="operator info">个人资料及其历史报名</a></th>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								
								<ide:page page="${pageList }" pageId="userListPage" searchForm="searchUserForm"></ide:page>
							</div>
						</div>
						
						<!-- 个人资料详情面板 -->
						<div id="detail_info">
						<c:if test="${empty info }">
							暂无个人资料详情
						</c:if>
						<c:if test="${!empty info && info.name !='' }">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-user"></i>${info.name }的个人资料
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
								</div>
							</div>
							<div class="portlet-body">
								<form class="form-horizontal" id="searchUserForm">
									<div class="control-group">
										<label class="control-label">照片</label>
										<div class="controls" style="max-width: 200px; max-height: 150px;">
											<img alt="" src="${info.picUrl } ">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">姓名</label>
										<div class="controls">
											<input type="text" name="name" value="${info.name }" readonly="readonly">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">性别</label>
										<div class="controls">
											<input type="text" name="name" value="${info.sex }" readonly="readonly">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">出生年月</label>
										<div class="controls">
											<input type="text" name="name" value="${info.birth }" readonly="readonly">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">民族</label>
										<div class="controls">
											<input type="text" name="name" value="${info.nationality }" readonly="readonly">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">籍贯</label>
										<div class="controls">
											<input type="text" name="name" value="${info.nativePlace }" readonly="readonly">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">出生地</label>
										<div class="controls">
											<input type="text" name="name" value="${info.birthPlace }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">政治面貌</label>
										<div class="controls">
											<input type="text" name="name" value="${info.partyName }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">入党时间</label>
										<div class="controls">
											<input type="text" name="name" value="${info.joinPartyTime }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">参加工作时间</label>
										<div class="controls">
											<input type="text" name="name" value="${info.workTime }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">来校时间</label>
										<div class="controls">
											<input type="text" name="name" value="${info.collegeTime }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">专业技术职务</label>
										<div class="controls">
											<input type="text" name="name" value="${info.specialJob }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">熟悉专业有何特长</label>
										<div class="controls">
											<input type="text" name="name" value="${info.specialSkill }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">全日制教育</label>
										<div class="controls">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">学历学位及毕业院校</label>
										<div class="controls">
											<input type="text" name="name" value="${info.fullTimeEducationRecord }-${info.fullTimeEducationLevel }-${info.fullTimeEducationCollege }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">在职教育</label>
										<div class="controls">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">学历学位及毕业院校</label>
										<div class="controls">
											<input type="text" name="name" value="${info.incumbencyEducationRecord }-${info.incumbencyEducationLevel }-${info.incumbencyEducationCollege }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">联系电话</label>
										<div class="controls">
											<input type="text" name="name" value="${info.tel }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">邮箱</label>
										<div class="controls">
											<input type="text" name="name" value="${info.email }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">现任职务</label>
										<div class="controls">
											<input type="text" name="name" value="${info.presentlyJob }" readonly="readonly">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">简历<span style="color: red">*</span></label>
										<div class="controls">
											<textarea class="span10" rows="8" readonly="readonly">${info.resume }</textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">奖惩情况</label>
										<div class="controls">
											<textarea class="span10" rows="5" readonly="readonly">${info.punishReward }</textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">年度考核结果</label>
										<div class="controls">
											<textarea class="span10" rows="5" readonly="readonly">${info.appraisalResult }</textarea>
										</div>
									</div>
									
									<div class="control-group">
										<table class="table table-bordered">
											<caption>家庭主要成员及重要社会关系</caption>
											<thead>
												<tr>
													<th>称谓</th>
													<th>姓名</th>
													<th>出生年月</th>
													<th>政治面貌</th>
													<th>工作单位及职务</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${family }" var="uv">
													<tr>
														<td>${uv.appellation }</td>
														<td>${uv.name }</td>
														<td>${uv.birth }</td>
														<td>${uv.politics }</td>
														<td>${uv.job }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</form>
							</div>
						</div>
						
						<!-- 历史报名情况 -->
						<c:if test="${empty history }">
							<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-user"></i>${info.name }历史报名情况
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
								</div>
							</div>
							<div class="portlet-body">
								<table class="table table-bordered">
									<caption>暂无历史报名</caption>
								</table>
							</div>
						</div>	
						</c:if>
						
						<c:if test="${!empty history }">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-user"></i>${info.name }历史报名情况
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
								</div>
							</div>
							<div class="portlet-body">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>选任名称</th>
											<th>选任类型</th>
											<th>报名开始时间</th>
											<th>报名岗位</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${history }" var="uv">
											<tr>
												<th>${uv.empanel.name }</th>
												<th>${uv.empanel.type }</th>
												<th>${uv.empanel.startTime }</th>
												<th>
													<c:forEach items="${uv.jobList }" var="jobSet">
														单位：${jobSet.empanelJob.organization.name } &nbsp&nbsp 岗位：${jobSet.empanelJob.job }&nbsp&nbsp  级别：${jobSet.empanelJob.level }<br>
													</c:forEach>
												</th>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						</c:if>
						</c:if>
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
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
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
</body>
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
		window.onload=function(){
    		App.init();
		};

		setTimeout(function() {
			$(".sidebar-option").trigger("change");
		}, 10);
		
		var maxPage = Math.ceil(parseFloat("${pageList.totalSize / pageList.pageSize}"));
		//分页的js
		 function userListPageGo(num){
    		if(num> maxPage || num<1){ 
    			alert('超出页面范围！'); 
    			return;
    		}
    		var data1 = $("#staffName").val();
			var data2 = $("#org").val();
			
    		$.ajax({
    			url : 'staff_management_page.do',
    			async: true,
    			type : 'post',
    			data : {toPage: num, staffName:data1, org:data2},
    			dataType : 'text',
    			success : function(feedback) {
    				$("#portlet").html(feedback);
    			},
    			error : function(xhr, ajaxOptions, thrownError) {
    				if (xhr.readyState == 0 || xhr.status == 0) {
    						return;
    				} else {
    					alert("XHR Status = " + xhr.status);
    					alert("Thrown Error = " + thrownError);
    					alert("AjaxOptions = " + ajaxOptions);
    				}
    			}
    		});
    	}
		
		$("#portlet").on('click','#search',function(){
			var data1 = $("#staffName").val();
			var data2 = $("#org").val();
			$.ajax({
				url : 'staff_management_page.do',
				type : 'post',
				async: true,
				data : {staffName:data1, org:data2},
				dataType : 'text',
				success : function(feedback) {
					$("#portlet").html(feedback);
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
		
		$("#portlet").on('click','.resetPSW',function(){
			var id = $(this).parent('th').attr('TID');
			alert("密码将重置为111111");
			$.ajax({
				url : 'staff_management_resetPSW.do',
				type : 'post',
				data : {EntryformId:id},
				dataType : 'text',
				success : function(feedback) {
					var tip_info = decodeURIComponent(feedback.replace(/\+/g, '%20'));
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
		
		$("#portlet").on('click','.info',function(){
			var id = $(this).parent('th').attr('TID');
			$.ajax({
				url : 'staff_management_detail_info.do',
				type : 'post',
				async: true,
				data : {EntryformId:id},
				dataType : 'text',
				success : function(feedback) {
					$("#detail_info").html(feedback);
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

</html>