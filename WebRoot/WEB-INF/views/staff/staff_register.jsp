<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<a class="brand" href=""> <img src="../resource/BackstageCommon/image/empanel_logo.png" /> </a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse"> <img src="../resource/BackstageCommon/image/menu-toggler.png" alt="" /> </a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN TOP NAVIGATION MENU -->
				<ul class="nav pull-right">
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="${photo }" style="max-width: 35px; max-height: 35px;"/> <span class="username">${username }</span> <i class="icon-angle-down"></i> </a>
						<ul class="dropdown-menu">
							<li><a href="#" data-toggle="modal" data-target="#person_info"><i class="icon-user"></i> 个人信息</a></li>
							</li>
							<li class="divider"></li>
							<li><a href="/empanel"><i class="icon-key"></i> 注销</a>
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
				<li class="start"><a href="staff_index.do"> <i class="icon-home"></i> <span class="title">首页</span> <span class=""></span> </a></li>
				<li class=""><a href="javascript:;"> <i class="icon-user"></i> <span class="title">个人基本信息</span> <span class=""></span> <span class="arrow"></span> </a>
					<ul class="sub-menu">
						<li class=""><a href="staff_info.do">信息查看</a></li>
					</ul></li>

				<li class="active "><a href="javascript:;"> <i class="icon-table"></i> <span class="title">选任报名</span> <span class="selected"></span> <span class="arrow open"></span> </a>

					<ul class="sub-menu">
						<li class="active"><a href="staff_register.do">所有可报名选任信息</a></li>
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
						<!-- BEGIN STYLE CUSTOMIZER, important! don't delete -->
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
							所有可报名选任信息 <small>这里列举出了当前所有正在进行中的选任工作</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="staff_index.do">首页</a> <span class="icon-angle-right"></span></li>
							<li><a href="#">选任报名</a> <span class="icon-angle-right"></span></li>
							<li><a href="#">所有可报名选任信息</a></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<table class="table table-bordered">
						<caption>现有以下选任可以报名</caption>
						<thead>
							<tr>
								<th>名称</th>
								<th>报名开始时间</th>
								<th>报名结束时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${empanel}" var="uv">
								<tr>
									<td><span style="font-size: 18px; font-weight: bold;">${uv.name }</span></td>
									<td>${uv.startTime }</td>
									<td>${uv.endTime }</td>
									<td><button type="button" class="btn btn-primary openDetail" TID="${uv.id }">查看详情</button>
										<button type="button" class="btn btn-primary openRegister" TID="${uv.id }">报名</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
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

	<!--detail info Modal -->
	<div class="modal fade" id="detail_info_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="detail_title"></h4>
				</div>
				<div class="modal-body" id="detail_plan">
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<!--register Modal -->
	<div class="modal fade" id="register_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="register_title">2016年1月科级选任---报名</h4>
				</div>
				<div class="modal-body">
					<button type="button" class="btn btn-primary download">查看报名表(word版)</button>
					<button type="button" class="btn btn-primary" id="fix_info">确认使用报名表</button>
					<p>
						<span style="color:red;">注意：</span>所有选任共用同一份报名表，下载报名表中的内容以您的个人信息为依据进行填充
					</p>
					<p>
						报名前必须点击确认使用报名表，<span style="color:red">确认后报名表信息将与本次选任工作绑定且不可修改，请确认报名表信息无误后再确认</span>
					</p>
					<div style="border:1px solid grey;"></div>
					<div style="margin-top: 10px"></div>
					<table class="table table-bordered">
						<caption>在这个选任中您可以报如下岗位</caption>
						<thead>
							<tr>
								<th>单位</th>
								<th>岗位</th>
								<th>级别</th>
								<th>招聘数量</th>
								<th>志愿排序</th>
							</tr>
						</thead>
						<tbody id="register_table">
							<tr>
								<td><span>2016年1月科级选任</span></td>
								<td>xxx</td>
								<td>xxx</td>
								<td>xxx</td>
								<td TID=""><select style="width:100px">
										<option>不报名</option>
										<option>1</option>
										<option>2</option>
								</select></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="submit_register">确认</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	
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
					用户名：${username } </br>
					身份证: ${identify } </br>
					邮箱: ${email } </br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<script src="../resource/BackstageCommon/js/jquery-1.11.2.min.js" type="text/javascript"></script>
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

		$(".openDetail").click(function() {
			//console.log($(this).attr("TID"));
			$.ajax({
				url: 'open_register_detail.do',
				type: 'post',
				data: {openId: $(this).attr("TID")},
				dataType: 'json',
				success : function(feedback) {
					//alert(feedback);
					//console.log(feedback);
					$("#detail_title").empty();
					$("#detail_plan").empty();
					$("#detail_title").append(feedback.title+"--------选任计划");
					$("#detail_plan").append(feedback.plan);
					$("#detail_info_modal").modal('show');
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
		
		//这里获取JSON数组，ajax方法失效，用$.getJSON,有必要总结一下
		$(".openRegister").click(function() {
			//console.log($(this).attr("TID"));
			var thiz = this;
			$.getJSON("open_register.do?openId="+$(this).attr("TID"),function(data){
				
				$("#register_title").empty();
				$("#register_title").append(data[0].title+"--------报名");
				//把选任的id加进来，确认使用报名表要用到
				$("#register_title").append("<span id='empanel_id' style='display:none'>"+$(thiz).attr("TID")+" </span>");
				$("#register_table").empty();
				
				//option的构造
				var st = "";
				for(var i=1;i<data.length-1;i++){
					st+="<option value=\""+i+"\">"+i+"</option>";
				}
				//表格内容填充
				for(var i=1; i<data.length-1;i++){
					var str="";
					str +=  "<tr>"+
"							<td><span>"+data[i].organization+"</span></td>"+
"							<td>"+data[i].job+"</td>"+
"							<td>"+data[i].level+"</td>"+
"							<td>"+data[i].num+"</td>"+
"							<td TID=\""+data[i].jobid+"\"><select style=\"width:100px\">"+
"								<option>不报名</option>"+
								st+
"							</select></td>"+
"							</tr>";
					$("#register_table").append(str);
				}
				
				
				if(data[data.length-1].isBind==1){		//报名表已经绑定了选任工作
					$("#fix_info").html('该选任工作里的报名表信息已经确认');
					$("#fix_info").addClass('disabled');
					//禁用绑定报名表点击
					$("#fix_info").unbind();
					//允许提交报名
					
					$("#submit_register").removeClass('disabled');
					
					//判断是否绑定了点击事件
					var objEvent = $._data($("#submit_register")[0],"events");
					if(objEvent && objEvent["click"]){		//已经绑定了点击事件
						//do nothing
					}else{
						$("#submit_register").click(submit);
					}
					/*
					alert($._data($("#submit_register")[0],"events"));
					console.log($._data($("#submit_register")[0],"events"));
					*/
				}else{
					$("#fix_info").html('确认使用报名表');
					$("#fix_info").removeClass('disabled');
					//允许 绑定报名表 点击
					var objEvent = $._data($("#fix_info")[0],"events");
					if(objEvent && objEvent["click"]){		//已经绑定了点击事件
						//do nothing
					}else{
						$("#fix_info").click(fix_info);
					}
					
					//禁用提交报名
					$("#submit_register").addClass('disabled');
					$("#submit_register").unbind();
				}
				
				$('#register_modal').modal('show');
			});
		});

		$(".download").click(function() {
			//window.location.href="staff_download_table.do";
			$.ajax({
				url : 'download_word.do',
				type : 'post',
				data : {
					download : 'fix_or_last',
					empanelId : $("#empanel_id").html()
				},
				dataType : 'text',
				success : function(feedback) {
					if(feedback =='fail'){
						alert("开始下载失败");
						return;
					}
					if (feedback != 'success') {
						window.location.href = feedback;
						return;
					}
					alert(feedback);
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

		//将报名表与选任工作绑定，且在此次选任工作不可修改报名表中的信息
		function fix_info(){
			$.ajax({
				url : 'fix_register_table.do',
				type : 'post',
				data : {
					info : 'fix',
					empanelId : $("#empanel_id").html()
				//选任工作id
				},
				dataType : 'text',
				success : function(feedback) {
					alert(feedback);
					if(feedback == 'success'){
						$("#fix_info").html('该选任工作里的报名表信息已经确认');
						$("#fix_info").attr('disabled','disabled');
						
						//允许提交报名
						$("#submit_register").removeClass('disabled');
						$("#submit_register").click(submit);
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
		}
		//提交报名的函数，一旦提交，则个人报名阶段完成
		function submit(){
			alert("确定提交？");
		}
	</script>
</body>
</html>