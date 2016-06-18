<!-- 常设考察组管理 -->
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
						<li class="active"><a href="PSG_management.do">常设考察组管理</a></li>
						<li class=""><a href="">临时考察组管理</a></li>
						<li class=""><a href="staff_management.do">教职工人员管理</a></li>
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
							常设考察组管理 <small></small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a>事务管理</a> <span class="icon-angle-right"></span> <a>常设考察组管理</a></li>
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
									<i class="icon-group"></i>现任考察组
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse pull_down"></a>
								</div>
							</div>
							<div class="portlet-body" id="portlet1">						
								<form class="form-horizontal" id="searchUserForm">
									<div class="control-group">
										<label class="control-label">考察组名称</label>
										<div class="controls">
											<input type="text" id="PSGName" value="${PSGName }">
											<span style="font-size: 15px">所在单位</span>
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
											<th>考察组名称</th>
											<th>考察组所在单位</th>
											<th>组长</th>
											<th>联络员</th>
											<th>组员</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${pageList.result }" var="uv">
											<tr>
												<td>${uv.name }</td>
												<td>${uv.organization.name }</td>
												<td>
													<c:forEach items="${uv.persons }" var="per">
														<c:if test="${per.type == '组长' }">
															<span style="font-weight: bold;">${per.studygroupPersonStore.name}</span> <br>
														</c:if>
													</c:forEach>
												</td>
												<td>
													<c:forEach items="${uv.persons }" var="per">
														<c:if test="${per.type == '联络员' }">
															<span style="font-weight: bold;">${per.studygroupPersonStore.name}</span> 电话:${per.studygroupPersonStore.tel} 邮箱:${per.studygroupPersonStore.email} <br>
														</c:if>
													</c:forEach>
												</td>
												<td>
													<c:forEach items="${uv.persons }" var="per">
														<c:if test="${per.type == '组员' }">
															<span style="font-weight: bold;">${per.studygroupPersonStore.name}</span><br>
														</c:if>
													</c:forEach>
												</td>
												<td>
													<button type="button" class="btn purple reset_password" TID="${uv.id }">重置密码</button>
													<button type="button" class="btn red delete" TID="${uv.id }">删除</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<ide:page page="${pageList }" pageId="userListPage" searchForm="searchUserForm"></ide:page>
								
								<div class="form-actions">
									<button type="button" class="btn blue" id="add">
										<i class="icon-plus "></i> 新增考察组
									</button>
								</div>
								
							</div>
						</div>


						<!-- 历史考察组部分 -->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-time"></i>历史考察组
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
								</div>
							</div>
							<div class="portlet-body">
								
								考察组所在单位
								<select style="margin-top: 10px">
									<option>请选择单位</option>
									<c:forEach items="${org }" var="uv">
										<option value="${uv.name }">${uv.name }</option>
									</c:forEach>
								</select>
								<button type="button" class="btn blue"><i class="icon-search"></i>搜索</button>
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>时间</th>
											<th>选任名称</th>
											<th>组长</th>
											<th>成员</th>
											<th>联络员</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										
									</tbody>
								</table>
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
	
	
	<!-- 新增考察组 -->
	<div class="modal fade" id="add_studygroup" tabindex="-1" aria-hidden="true" role="dialog" style="display: none">
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
					<h4 class="modal-title">新增常设考察组</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="info_form">
						<div class="control-group">
							<label class="control-label">设置用户名<span style="color: red">*</span></label>
							<div class="controls">
								<input type="text" placeholder="用户名" name="username">
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">设置密码<span style="color: red">*</span></label>
							<div class="controls">
								<input type="text" value="密码初始化为111111" readonly="readonly">
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">考察组名称<span style="color: red">*</span></label>
							<div class="controls">
								<input type="text" placeholder="xx考察组" name="studygroupname">
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">考察组所属单位<span style="color: red">*</span></label>
							<div class="controls">
								<select name="organization">
									<option>请选择单位</option>
									<c:forEach items="${org }" var="uv">
										<option value="${uv.name }">${uv.name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">组长姓名<span style="color: red">*</span></label>
							<div class="controls">
								<input type="text" placeholder="组长姓名" name="leader_name">
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">联络员信息<span style="color: red">*</span></label>
							<div class="controls">
								<input type="text" placeholder="姓名" name="liaison_name">
								<input type="text" placeholder="电话" name="liaison_phone">
								<input type="email" placeholder="邮箱" name="liaison_email">
							</div>
						</div>
						
						<div class="control-group">	
							<label class="control-label">组员姓名(不能为空)<span style="color: red">*</span></label>
							<div class="controls">
								<input type="text" placeholder="姓名" name="member_name">
								<button id="addMember" type="button">
									<i class="icon-plus">添加</i>
								</button>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn blue" id="submit" data-dismiss="modal">确认添加</button>
					<button type="button" class="btn red" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	
	 
	<!--person info Modal -->
	<div class="modal fade" id="person_info" tabindex="-1" role="dialog" aria-hidden="true" style="display: none">
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
					<button type="button" class="btn red" data-dismiss="modal">关闭</button>
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
		//App.init();
		
		setTimeout(function() {
			$(".sidebar-option").trigger("change");
		}, 10);
		
		//分页的js
		var maxPage = Math.ceil(parseFloat("${pageList.totalSize / pageList.pageSize}"));
		 function userListPageGo(num){
    		if(num> maxPage || num<1){ 
    			alert('超出页面范围！'); 
    			return;
    		}
    		var data1 = $("#PSGName").val();
			var data2 = $("#org").val();
			
    		$.ajax({
    			url : 'PSG_management_page.do',
    			async: true,
    			type : 'post',
    			data : {toPage: num, PSGName:data1, org:data2},
    			dataType : 'text',
    			success : function(feedback) {
    				$("#portlet1").html(feedback);
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
		
		//动态绑定点击事件
		$("#portlet1").on("click","#search",function(){
			var data1 = $("#PSGName").val();
			var data2 = $("#org").val();
			$.ajax({
				url : 'PSG_management_page.do',
				type : 'post',
				async: true,
				data : {PSGName:data1, org:data2},
				dataType : 'text',
				success : function(feedback) {
					$("#portlet1").html(feedback);
					maxPage = Math.ceil(parseFloat("${pageList.totalSize / pageList.pageSize}"));
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
		
		
		$("#portlet1").on('click','.reset_password',function(){
			var studygroup_id = $(this).attr("TID");
			alert("密码将重置为：111111");
			$.ajax({
				url : 'reset_studygroup_password.do',
				type : 'post',
				data : {studygroupId: studygroup_id},
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
		
		$("#portlet1").on('click','.delete',function(){
			var studygroup_id = $(this).attr("TID");
			
			$.ajax({
				url : 'delete_studygroup.do',
				type : 'post',
				data : {studygroupId: studygroup_id},
				dataType : 'text',
				success : function(feedback) {
					var tip_info = decodeURIComponent(feedback.replace(
									/\+/g, '%20'));
					alert(tip_info);
					if(tip_info == '删除成功'){
						window.location.href = "PSG_management.do";
					}
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
		
		$("#portlet1").on('click','#add',function(){
			$('#add_studygroup').modal('show');
		});
		
		
		$("#addMember").click(function(){
			var htmlStr = "<input type=\"text\" placeholder=\"姓名\" name=\"member_name\" style='margin-right:6px'>"+
			"<button class=\"delete_member\" type=\"button\">"+
				"<i class=\"icon-remove-sign\"></i>"+
			"</button>";
		
			$(this).parent('div').append(htmlStr);
			$(".delete_member").click(delete_member);
		});
		
		function delete_member(){
			$(this).prev().remove();
			$(this).remove();
		}
		
		$("#submit").click(function(){
			var data = $("#info_form").serialize();
			
			$.ajax({
				url : 'add_new_studygroup.do',
				type : 'post',
				data : data,
				dataType : 'text',
				success : function(feedback) {
					var tip_info = decodeURIComponent(feedback.replace(
									/\+/g, '%20'));
					alert(tip_info);
					if(tip_info == '添加成功'){
						window.location.href = "PSG_management.do";
					}
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