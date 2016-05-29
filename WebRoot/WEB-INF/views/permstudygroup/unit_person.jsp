<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>厦门大学选任系统</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="../resource/BackstageCommon/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../resource/BackstageCommon/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="../resource/BackstageCommon/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="../resource/BackstageCommon/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../resource/BackstageCommon/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="../resource/BackstageCommon/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
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
            <a class="brand" href="">
                <img src="../resource/BackstageCommon/image/empanel_PSG.png" />
            </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="../resource/BackstageCommon/image/menu-toggler.png" alt="" />
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img alt="" src="${photo }" style="max-width: 35px; max-height: 35px;"/> 
                        <span class="username">${name }</span>
                        <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#" data-toggle="modal" data-target="#person_info"><i class="icon-user"></i> 个人信息</a></li>
                        <li class="divider"></li>
                        <li><a href='<c:url value="/j_spring_security_logout"/>' ><i class="icon-key"></i> 注销</a></li>
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
                <div class="sidebar-toggler hidden-phone"></div>
                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
            </li>
            <li class="start ">
                <a href="PSG_index.do?type=${type }&empanelId=${empanelId}">
                    <i class="icon-home"></i>
                    <span class="title">首页</span>
                    <span class=""></span>
                </a>
            </li>
            <c:if test="${type == 0 }">
            <li class="active">
                <a href="javascript:;">
                    <i class="icon-search"></i>
                    <span class="title">考察工作</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li class="active">
                        <a href="unit_register_person.do">本单位报名人员</a>
                    </li>
                    <li class="">
                        <a href="meeting_recommend.do">会议推荐</a>
                    </li>
                    <li class="">
                        <a href="talk_recommend.do">谈话推荐</a>
                    </li>
                    <li class="">
                        <a href="">考察情况</a>
                    </li>
                    <li class="">
                        <a href="">汇总转交</a>
                    </li>
                </ul>
            </li>
            </c:if>
			<c:if test="${type == 1 }">
            <li class=" ">
                <a href="javascript:;">
                    <i class="icon-paper-clip"></i>
                    <span class="title">选任工作</span>
                	<span class=""></span>
                    <span class="arrow"></span>
                </a>

                <ul class="sub-menu">
                	<li class="">
                        <a href="">岗位报名人员</a>
                    </li>
                    <li class="">
                        <a href="">酝酿人选</a>
                    </li>
                    <li class="">
                        <a href="">征求纪委意见</a>
                    </li>
                    <li class="">
                        <a href="">公示情况</a>
                    </li>
                    <li class="">
                        <a href="">报批</a>
                    </li>
                </ul>
            </li>
            </c:if>
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
							<label> 
								<span>Header</span> 
								<select class="header-option m-wrap small">
									<option value="fixed" selected>Fixed</option>
									<option value="default">Default</option>
								</select> 
							</label> 
							<label> 
								<span>Sidebar</span> 
								<select class="sidebar-option m-wrap small">
									<option value="fixed" id="sidebar_fixed">Fixed</option>
									<option value="default">Default</option>
								</select> 
							</label> 
							<label> 
								<span>Footer</span> 
								<select class="footer-option m-wrap small">	
									<option value="fixed">Fixed</option>
									<option value="default">Default</option>
								</select> 
							</label>
						</div>
					<!-- END BEGIN STYLE CUSTOMIZER -->
                    <h3 class="page-title">
                       	 本单位报名人员
                        <small>查看本单位下有哪些教职工参与了此次选任工作</small>
                    </h3>
                    <ul class="breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a >考察工作</a>
                            <span class="icon-angle-right"></span>
                            <a> 本单位报名人员</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
            	<center style="font-size:30px; margin-top:80px">
            		<a href="unit_register_person_download.do">下载 本单位报名人员</a>
            	</center>
            	
            	<div style="border: 1px"></div>
            </div>
            <!-- END PAGE CONTENT-->
        </div>
        <!-- END PAGE CONTAINER-->
    </div>
    <!-- END PAGE -->
</div>
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        Copyright 2016  ©  厦门大学信息学院
    </div>
    <div class="footer-tools">
		<span class="go-top">
			<i class="icon-angle-up"></i>
		</span>
    </div>
</div>
<!-- END FOOTER -->

<!--person info Modal -->
	<div class="modal fade" id="person_info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						
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
		}, 10);
</script>
</body>
</html>