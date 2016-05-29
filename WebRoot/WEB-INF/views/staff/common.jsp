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
                <img src="../resource/BackstageCommon/image/empanel_logo.png" />
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
                        <img alt="" src="../resource/BackstageCommon/image/photo.jpg" />
                        <span class="username">Bob Nilson</span>
                        <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="extra_profile.html"><i class="icon-user"></i> 个人信息</a></li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="icon-key"></i> 注销</a></li>
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
            <li class="start active">
                <a href="staff_index.do">
                    <i class="icon-home"></i>
                    <span class="title">首页</span>
                    <span class="selected"></span>
                </a>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-user"></i>
                    <span class="title">个人基本信息</span>
                    <span class=""></span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="">
                        <a href="staff_info.do">信息查看</a>
                    </li>
                </ul>
            </li>

            <li class=" ">
                <a href="javascript:;">
                    <i class="icon-table"></i>
                    <span class="title">选任报名</span>
                    
                    <span class="arrow"></span>
                </a>

                <ul class="sub-menu">
                	<li class="">
                        <a href="staff_register.do">所有可报名选任信息</a>
                    </li>
                    <li >
                        <a href="staff_download_table.do">下载报名表</a>
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
                        Page Title
                        <small>small Title</small>
                    </h3>
                    <ul class="breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a href="staff_index.do">首页</a>
                            <span class="icon-angle-right"></span>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
                首页这里写点什么
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
</script>
</body>
</html>